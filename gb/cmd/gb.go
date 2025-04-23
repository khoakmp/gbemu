package main

import (
	"fmt"
	"log"
	"os"

	"github.com/khoakmp/gbemu/gb"
)

func runGb() {
	cmd := os.Args[1]
	if cmd == "d" {
		logFile, err := os.OpenFile("log", os.O_WRONLY|os.O_CREATE|os.O_TRUNC, 0644)

		if err != nil {
			panic("failed to open log file")
		}
		defer func() {
			logFile.Sync()
			logFile.Close()
		}()

		log.SetOutput(logFile)
		gb.RunStepByStep()
		return
	}

	g := gb.NewGameboy("../../rom/pokemon1.gb", true)
	g.Run()
	//ReadBootROM()
}

func ReadBootROM() {
	f, _ := os.Open("../../rom/pokemon1.gb")
	var buf [1024]byte
	f.Read(buf[:])
	fmt.Printf("Cart Type:%x\n", buf[0x0147])
	fmt.Println("Color Falg:", buf[0x0143])
}
