A Game Boy emulator written entirely in **Golang**.

This project aims to emulate the original Nintendo Game Boy hardware as accurately as possible while exploring Go's capabilities for systems-level programming.

---

## 🚀 Features

- CPU emulation (Sharp LR35902)
- Memory management (ROM/RAM banks)
- Basic graphics rendering (monochrome display)
- Input handling (buttons & controls)
- Cartridge loading (`.gb` ROM files)
- APU is implemented, but not intergrated
- Only support MBC1 and MBC3x13, you can add other MBC types if needed
---

## 📦 Installation

Ensure you have **Go 1.20+** installed.
File Game.gb must be placed in folder rom
```bash
git clone https://github.com/your-username/gameboy-emulator-go.git
cd gb/cmd
go run .