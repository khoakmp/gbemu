package main

import (
	"os"
)

func main() {
	f, _ := os.Open("pokemon.gb")
	defer f.Close()
	var buf []byte = make([]byte, 80)
	baseAddr := 0x0100
	f.ReadAt(buf, 0x0100)
	// 4 * 16 +16 = 80
	println("CGB Flag:", buf[0x013f-baseAddr])
	println("MBC type:", buf[0x0147-baseAddr])
	println("rom size type:", buf[0x0148-baseAddr])
	println("ram size type:", buf[0x0149-baseAddr])
}
