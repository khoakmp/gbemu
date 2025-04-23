package main

import (
	"fmt"
	"image"
	"image/color"
	"image/png"
	"log"
	"math"
	"os"
	"reflect"
)

// quantizeToRange maps a value from 0-255 to 0-3
func quantizeToRange(value uint8) uint8 {
	return value / 64 // Integer division: 256 / 4 = 64
}

// resizeTo8x8 resizes a grayscale image to 8x8 using bilinear interpolation
func resizeTo8x8(src *image.Gray) *image.Gray {
	dst := image.NewGray(image.Rect(0, 0, 8, 8))
	srcWidth := src.Bounds().Dx()
	srcHeight := src.Bounds().Dy()
	srcMinX, srcMinY := src.Bounds().Min.X, src.Bounds().Min.Y

	for y := 0; y < 8; y++ {
		for x := 0; x < 8; x++ {
			// Map destination pixel (x, y) to source coordinates (floating-point)
			srcX := float64(x) * float64(srcWidth) / 8.0
			srcY := float64(y) * float64(srcHeight) / 8.0

			// Find the four surrounding pixels
			x0 := int(math.Floor(srcX))
			x1 := int(math.Ceil(srcX))
			y0 := int(math.Floor(srcY))
			y1 := int(math.Ceil(srcY))

			// Ensure coordinates are within bounds
			if x0 >= srcWidth+srcMinX {
				x0 = srcWidth + srcMinX - 1
			}
			if x1 >= srcWidth+srcMinX {
				x1 = srcWidth + srcMinX - 1
			}
			if y0 >= srcHeight+srcMinY {
				y0 = srcHeight + srcMinY - 1
			}
			if y1 >= srcHeight+srcMinY {
				y1 = srcHeight + srcMinY - 1
			}

			// Get the four pixel values
			p00 := float64(src.GrayAt(x0, y0).Y)
			p10 := float64(src.GrayAt(x1, y0).Y)
			p01 := float64(src.GrayAt(x0, y1).Y)
			p11 := float64(src.GrayAt(x1, y1).Y)

			// Calculate fractional distances
			fx := srcX - float64(x0)
			fy := srcY - float64(y0)

			// Perform bilinear interpolation
			// Interpolate horizontally first
			top := p00*(1-fx) + p10*fx
			bottom := p01*(1-fx) + p11*fx
			// Interpolate vertically
			value := top*(1-fy) + bottom*fy

			// Set the pixel value in the destination image
			dst.SetGray(x, y, color.Gray{Y: uint8(value)})
		}
	}
	return dst
}

func main() {
	// Step 1: Load the RGBA image
	//cutImage()
	readImage()
	//convertImageToGrayScaled()
	//createImg()
}
func convertImageToGrayScaled() {
	originalFile := "y"

	file, err := os.Open(fmt.Sprintf("%s.png", originalFile)) // Replace with your image path
	if err != nil {
		log.Fatalf("Failed to open image: %v", err)
	}
	defer file.Close()

	img, err := png.Decode(file)
	if err != nil {
		log.Fatalf("Failed to decode image: %v", err)
	}

	// Step 2: Get image bounds and create a new grayscale image
	bounds := img.Bounds()
	width, height := bounds.Max.X, bounds.Max.Y
	outputImg := image.NewGray(image.Rect(0, 0, width, height))

	// Step 3: Process each pixel
	for y := bounds.Min.Y; y < bounds.Max.Y; y++ {
		for x := bounds.Min.X; x < bounds.Max.X; x++ {
			// Get RGBA values
			r, g, b, a := img.At(x, y).RGBA()
			r8, g8, b8, a8 := uint8(r>>8), uint8(g>>8), uint8(b>>8), uint8(a>>8)

			// Option 1: Convert RGB to grayscale and weight by alpha
			// Grayscale: Y = 0.299R + 0.587G + 0.114B
			gray := uint8(0.299*float32(r8) + 0.587*float32(g8) + 0.114*float32(b8))
			// Apply alpha (a8 is 0-255, normalize to 0-1)
			singleChannel := uint8(float32(gray) * (float32(a8) / 255.0))

			// Option 2: If you only want the alpha channel
			// singleChannel := a8

			// Step 4: Quantize to 0-3
			quantized := quantizeToRange(singleChannel)

			// Step 5: Set pixel in output image (scale back to 0-255 for grayscale image)
			// Since the output is a grayscale image, we map 0-3 to 0-255 for visualization
			outputImg.SetGray(x, y, color.Gray{Y: quantized * 64}) // Optional: scale for visibility
		}
	}
	resizedImg := resizeTo8x8(outputImg)
	// Step 6: Save the output image
	outFile, err := os.Create(fmt.Sprintf("%s-gray-scaled.png", originalFile))
	if err != nil {
		log.Fatalf("Failed to create output file: %v", err)
	}
	defer outFile.Close()

	if err := png.Encode(outFile, resizedImg); err != nil {
		log.Fatalf("Failed to encode output image: %v", err)
	}

	log.Println("Image processed and saved as output_single_channel.png")
}
func cutImage() {
	file, _ := os.Open("y.png")
	defer file.Close()
	img, err := png.Decode(file)
	if err != nil {
		println("failed to decode image file", err)
		return
	}

	fmt.Println(reflect.TypeOf(img))
	src, ok := img.(*image.NRGBA)
	if !ok {
		println("image is not NRGBA")
		return
	}
	data := src.Pix
	println(len(data))

	/*
		for i := 0; i < len(data); i++ {
			println(data[i])
		} */
	bounds := src.Bounds()
	//width, height := bounds.Dx(), bounds.Dy()

	// Create a new grayscale image
	dst := image.NewGray(bounds)

	// Iterate over each pixel
	for y := bounds.Min.Y; y < bounds.Max.Y; y++ {
		for x := bounds.Min.X; x < bounds.Max.X; x++ {
			// Get the NRGBA pixel
			c := src.NRGBAAt(x, y)
			fmt.Println(c.R, c.G, c.B, c.A)
			// Convert to grayscale using luminosity method
			// Y = 0.299*R + 0.587*G + 0.114*B
			//gray := uint8(0.299*float64(c.R) + 0.587*float64(c.G) + 0.114*float64(c.B))
			var gray uint8 = 255
			// in Gray image, color value in range 0-255, 0 is black, 255 is  white
			if c.A == uint8(255) {
				gray = 122
			}

			// dung van de trong ky la that
			// Map grayscale value (0-255) to range 0-3
			// Divide by 64 to get approximately: 0-63 -> 0, 64-127 -> 1, 128-191 -> 2, 192-255 -> 3
			//grayValue := gray / 64
			println(x, y, gray)

			// Set the pixel in the destination image
			dst.SetGray(x, y, color.Gray{Y: gray})
		}
	}
	f, err := os.Create("gray_output.png")
	if err != nil {
		panic(err)
	}
	defer f.Close()

	if err := png.Encode(f, dst); err != nil {
		panic(err)
	}
}

func readImage() {
	/* f, _ := os.Open("z.png")
	img, err := png.Decode(f)
	if err != nil {
		fmt.Println("failed to decode image:", err)
		return
	}
	src := img.(*image.NRGBA)
	fmt.Println(reflect.TypeOf(img))

	for y := img.Bounds().Min.Y; y < img.Bounds().Max.Y; y++ {
		for x := img.Bounds().Min.X; x < img.Bounds().Max.X; x++ {
			c := src.NRGBAAt(x, y)
			println(c.R, c.G, c.B, c.A)

		}
	} */

	f, _ := os.Open("gray_output.png")
	src, _ := png.Decode(f)
	for y := src.Bounds().Min.Y; y < src.Bounds().Max.Y; y++ {
		for x := src.Bounds().Min.X; x < src.Bounds().Max.X; x++ {
			println(src.At(x, y).RGBA())
		}
	}

}
func createImg() {

	img := image.NewNRGBA(image.Rect(0, 0, 2, 2))
	img.SetNRGBA(0, 0, color.NRGBA{
		R: 10,
		G: 10,
		B: 10,
		A: 255,
	})
	img.SetNRGBA(0, 1, color.NRGBA{
		R: 50,
		G: 50,
		B: 50,
		A: 255,
	})
	img.SetNRGBA(1, 0, color.NRGBA{
		R: 100,
		G: 100,
		B: 100,
		A: 255,
	})
	img.SetNRGBA(1, 1, color.NRGBA{
		R: 255,
		G: 255,
		B: 255,
		A: 255,
	})

	f, _ := os.Create("testimg.png")
	defer f.Close()
	err := png.Encode(f, img)
	if err != nil {
		fmt.Println("failed to encode image to file:", err)
		return
	}
}
