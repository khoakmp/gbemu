package lcd

import (
	"image"
	"image/color"
	"log"
	"math/rand"
	"time"

	"github.com/faiface/pixel"
	"github.com/faiface/pixel/pixelgl"
	"github.com/khoakmp/gbemu/joypad"
	"golang.org/x/image/colornames"
)

const (
	ScreenWidth  = 160
	ScreenHeight = 144
)

// Game Boy palette (0–3 mapped to RGB, DMG green shades)
var gbPalette = []color.Color{
	0: color.RGBA{224, 248, 208, 255}, // 0: White/Lightest
	1: color.RGBA{136, 168, 144, 255}, // 1: Light gray
	2: color.RGBA{84, 96, 88, 255},    // 2: Dark gray
	3: color.RGBA{12, 32, 40, 255},    // 3: Black/Darkest
}

func example() {
	pixelgl.Run(func() {
		// Create a window (320x288 for 2x scaling of 160x144)
		cfg := pixelgl.WindowConfig{
			Title:  "Game Boy Screen",
			Bounds: pixel.R(0, 0, 320, 288),
		}
		win, err := pixelgl.NewWindow(cfg)
		if err != nil {
			panic(err)
		}

		defer win.Destroy()

		// Create a 160x144 canvas (Game Boy screen size)
		canvas := pixelgl.NewCanvas(pixel.R(0, 0, 160, 144))

		// Window parameters
		const windowWidth, windowHeight = 64, 32
		wx, wy := 87, 70 // WX=87 (X=80 after -7), WY=70

		// Create a Window image (64x32, pixel values 0–3)
		var img *image.RGBA = image.NewRGBA(image.Rect(0, 0, windowWidth, windowHeight))

		var pic *pixel.PictureData = pixel.PictureDataFromImage(img)

		var sprite *pixel.Sprite = pixel.NewSprite(pic, pic.Bounds())

		updateImg := func() {
			for y := 0; y < windowHeight; y++ {
				for x := 0; x < windowWidth; x++ {
					// Checkerboard pattern (0–3)
					pixelValue := rand.Int() % 4
					img.Set(x, y, gbPalette[pixelValue])
				}
			}

			pic = pixel.PictureDataFromImage(img)
			sprite.Set(pic, pic.Rect)
			//sprite = pixel.NewSprite(pic, pic.Bounds())

		}
		updateImg()
		// Convert Window image to Pixel sprite

		// Custom game loop
		for !win.Closed() {
			// Handle input (move Window with arrow keys)
			if win.Pressed(pixelgl.KeyRight) {
				wx++
			}
			if win.Pressed(pixelgl.KeyLeft) {
				wx--
			}
			if win.Pressed(pixelgl.KeyUp) {
				wy++
			}
			if win.Pressed(pixelgl.KeyDown) {
				wy--
			}

			if win.JustPressed(pixelgl.KeySpace) {
				// Save canvas to PNG

				/* file, _ := os.Create("gameboy_frame.png")
				png.Encode(file, canvas.Image())
				file.Close() */
			}

			// Clear canvas to white (pixel value 0)
			canvas.Clear(gbPalette[0])
			updateImg()
			// Draw Window sprite at WX/WY
			sprite.Draw(canvas, pixel.IM.Moved(pixel.V(float64(wx-7), float64(wy))))
			// Draw canvas to window (scaled 2x)
			win.Clear(colornames.Black)

			canvas.Draw(win, pixel.IM.Scaled(pixel.ZV, 2).Moved(win.Bounds().Center()))
			win.Update()

			// Control frame rate (~60 FPS)
			time.Sleep(time.Second / 60)
		}
	})
}

type GbLcd struct {
	buffers        [][]uint8
	sprite         *pixel.Sprite
	win            *pixelgl.Window
	img            *image.RGBA
	canvas         *pixelgl.Canvas
	setButtonState func(button joypad.ButtonCode, press bool)
	exited         bool
}

func NewLcd(setButtonState func(button joypad.ButtonCode, press bool)) *GbLcd {
	buffers := make([][]uint8, ScreenHeight)
	for i := 0; i < ScreenHeight; i++ {
		buffers[i] = make([]uint8, ScreenWidth)
	}
	win, err := pixelgl.NewWindow(pixelgl.WindowConfig{
		Title:  "Game Boy Emulator",
		Bounds: pixel.R(0, 0, ScreenWidth<<1, ScreenHeight<<1),
	})
	if err != nil {
		log.Fatal(err)
	}

	l := &GbLcd{
		buffers: buffers,
		sprite:  &pixel.Sprite{},
		win:     win,
		img:     &image.RGBA{},
		canvas:  pixelgl.NewCanvas(pixel.R(0, 0, ScreenWidth, ScreenHeight)),
	}

	return l
}

func (l *GbLcd) Buffer() [][]uint8 {
	return l.buffers
}

func (l *GbLcd) Run(fn func()) {
	pixelgl.Run(fn)
}

func (l *GbLcd) Exited() bool {
	return l.exited
}

func (l *GbLcd) Draw() {
	if l.win.Closed() {
		l.exited = true
		return
	}
	for y := 0; y < ScreenHeight; y++ {
		for x := 0; x < ScreenWidth; x++ {
			l.img.Set(x, y, gbPalette[l.buffers[y][x]])
		}
	}
	if l.win.Pressed(pixelgl.KeyZ) {
		l.setButtonState(joypad.ButtonA, true)
	}
	if l.win.Pressed(pixelgl.KeyX) {
		l.setButtonState(joypad.ButtonB, true)
	}
	if l.win.Pressed(pixelgl.KeyUp) {
		l.setButtonState(joypad.ButtonUp, true)
	}
	if l.win.Pressed(pixelgl.KeyDown) {
		l.setButtonState(joypad.ButtonDown, true)
	}
	if l.win.Pressed(pixelgl.KeyRight) {
		l.setButtonState(joypad.ButtonRight, true)
	}
	if l.win.Pressed(pixelgl.KeyLeft) {
		l.setButtonState(joypad.ButtonLeft, true)
	}

	pic := pixel.PictureDataFromImage(l.img)
	l.win.Clear(colornames.Black)
	l.canvas.Clear(gbPalette[0])
	l.sprite.Set(pic, pic.Bounds())
	l.sprite.Draw(l.canvas, pixel.IM.Moved(pixel.V(0, 0)))
	l.canvas.Draw(l.win, pixel.IM.Scaled(pixel.ZV, 2).Moved(l.win.Bounds().Center()))
	l.win.Update()
}
