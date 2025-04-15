package main

import "fmt"

func main() {
	var x uint8 = 250
	var y int8 = -10
	fmt.Println(uint8(x + uint8(y)))
}
