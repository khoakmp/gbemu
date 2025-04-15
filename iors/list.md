The Game Boy features a variety of **I/O registers** mapped to the memory range **$FF00–$FF7F**, which control hardware components like the PPU (Picture Processing Unit), sound, timers, joypad, and more. These registers allow the CPU to interface with the Game Boy’s peripherals. Below is a comprehensive list of all I/O registers in the original Game Boy (DMG), including their addresses and brief descriptions. Note that some addresses are unused or have specific behaviors.

---

### I/O Registers List

#### **Joypad**
- **$FF00 - P1/JOYP** (Joypad Input)
  - Controls button and directional input reading (read/write).

#### **Serial Communication**
- **$FF01 - SB** (Serial Transfer Data)
  - Holds data to send/receive via the link cable (read/write).
- **$FF02 - SC** (Serial Transfer Control)
  - Configures serial transfer (start, clock) (read/write).

#### **Timer**
- **$FF04 - DIV** (Divider Register)
  - Upper 8 bits of a 16-bit counter, increments at 16384 Hz (read/write; writing resets to 0).
- **$FF05 - TIMA** (Timer Counter)
  - Increments at a programmable rate; triggers interrupt on overflow (read/write).
- **$FF06 - TMA** (Timer Modulo)
  - Value loaded into TIMA after overflow (read/write).
- **$FF07 - TAC** (Timer Control)
  - Enables timer and sets its clock frequency (read/write).

#### **Interrupt Flags**
- **$FF0F - IF** (Interrupt Flag)
  - Indicates requested interrupts (V-Blank, LCD STAT, Timer, Serial, Joypad) (read/write).

#### **Sound**
- **$FF10 - NR10** (Channel 1 Sweep)
  - Sweep settings for square wave 1 (read/write).
- **$FF11 - NR11** (Channel 1 Sound Length/Wave Pattern Duty)
  - Duty cycle and length for square wave 1 (read/write).
- **$FF12 - NR12** (Channel 1 Volume Envelope)
  - Volume and envelope settings for square wave 1 (read/write).
- **$FF13 - NR13** (Channel 1 Frequency Low)
  - Lower 8 bits of frequency for square wave 1 (write-only).
- **$FF14 - NR14** (Channel 1 Frequency High/Control)
  - Upper 3 bits of frequency and control for square wave 1 (read/write).
- **$FF16 - NR21** (Channel 2 Sound Length/Wave Pattern Duty)
  - Duty cycle and length for square wave 2 (read/write).
- **$FF17 - NR22** (Channel 2 Volume Envelope)
  - Volume and envelope settings for square wave 2 (read/write).
- **$FF18 - NR23** (Channel 2 Frequency Low)
  - Lower 8 bits of frequency for square wave 2 (write-only).
- **$FF19 - NR24** (Channel 2 Frequency High/Control)
  - Upper 3 bits of frequency and control for square wave 2 (read/write).
- **$FF1A - NR30** (Channel 3 Sound On/Off)
  - Enables/disables wave channel (read/write).
- **$FF1B - NR31** (Channel 3 Sound Length)
  - Length for wave channel (write-only).
- **$FF1C - NR32** (Channel 3 Select Output Level)
  - Volume level for wave channel (read/write).
- **$FF1D - NR33** (Channel 3 Frequency Low)
  - Lower 8 bits of frequency for wave channel (write-only).
- **$FF1E - NR34** (Channel 3 Frequency High/Control)
  - Upper 3 bits of frequency and control for wave channel (read/write).
- **$FF20 - NR41** (Channel 4 Sound Length)
  - Length for noise channel (write-only).
- **$FF21 - NR42** (Channel 4 Volume Envelope)
  - Volume and envelope settings for noise channel (read/write).
- **$FF22 - NR43** (Channel 4 Polynomial Counter)
  - Noise frequency and randomness settings (read/write).
- **$FF23 - NR44** (Channel 4 Control)
  - Control/trigger for noise channel (read/write).
- **$FF24 - NR50** (Channel Control/Volume)
  - Master volume and channel panning (read/write).
- **$FF25 - NR51** (Sound Output Terminal Selection)
  - Channel output to left/right speakers (read/write).
- **$FF26 - NR52** (Sound On/Off)
  - Global sound enable and channel status (read/write).

#### **Wave Pattern RAM**
- **$FF30–$FF3F** (Wave Pattern RAM)
  - 16 bytes storing the waveform for Channel 3 (32 4-bit samples) (read/write).

#### **PPU (LCD and Video)**
- **$FF40 - LCDC** (LCD Control)
  - Controls LCD enable, tilemaps, window, sprites, etc. (read/write).
- **$FF41 - STAT** (LCD Status)
  - PPU mode, LY=LYC flag, and interrupt enables (read/write for bits 3–6).
- **$FF42 - SCY** (Scroll Y)
  - Vertical scroll position of background (read/write).
- **$FF43 - SCX** (Scroll X)
  - Horizontal scroll position of background (read/write).
- **$FF44 - LY** (Line Y)
  - Current scanline being processed (0–153) (read-only).
- **$FF45 - LYC** (LY Compare)
  - Value to compare with LY for interrupt (read/write).
- **$FF46 - DMA** (OAM DMA Transfer)
  - Triggers DMA transfer to OAM (write-only).
- **$FF47 - BGP** (Background Palette)
  - Color mapping for background tiles (read/write).
- **$FF48 - OBP0** (Object Palette 0)
  - Color mapping for sprite palette 0 (read/write).
- **$FF49 - OBP1** (Object Palette 1)
  - Color mapping for sprite palette 1 (read/write).
- **$FF4A - WY** (Window Y Position)
  - Vertical position of window (read/write).
- **$FF4B - WX** (Window X Position)
  - Horizontal position of window (read/write).

#### **Interrupt Enable**
- **$FFFF - IE** (Interrupt Enable)
  - Enables/disables specific interrupts (read/write).

---

### Unused/Reserved Addresses
- **$FF03, $FF08–$FF0E, $FF15, $FF1F, $FF27–$FF2F, $FF4C–$FF7F**
  - These addresses in the $FF00–$FF7F range are **unused** in the original Game Boy (DMG).
  - Reading typically returns $FF or random data; writing has no effect (except in some edge cases or on later models like the Game Boy Color, which repurposes some).

---

### Key Notes
- **Range**: I/O registers occupy $FF00–$FF7F, with $FFFF as a special case for IE.
- **Access**: 
  - Most registers are read/write, but some (e.g., LY, NR13) are read-only or write-only.
  - Writing to read-only registers is ignored; reading write-only registers returns undefined values (often $FF).
- **Behavior**: Some registers (e.g., DIV, DMA) have unique side effects when accessed.
- **Game Boy Color**: The GBC adds more I/O registers (e.g., $FF4D for speed switch), but this list is for the original DMG.

---

### Summary Table
| Address   | Name       | Description                     |
|-----------|------------|---------------------------------|
| $FF00     | P1/JOYP    | Joypad input                   |
| $FF01     | SB         | Serial data                    |
| $FF02     | SC         | Serial control                 |
| $FF04     | DIV        | Divider register               |
| $FF05     | TIMA       | Timer counter                  |
| $FF06     | TMA        | Timer moduloBeneficial         |
| $FF07     | TAC        | Timer control                  |
| $FF0F     | IF         | Interrupt flags                |
| $FF10–$FF14 | NR10–NR14 | Sound Channel 1              |
| $FF16–$FF19 | NR21–NR24 | Sound Channel 2              |
| $FF1A–$FF1E | NR30–NR34 | Sound Channel 3 (Wave)       |
| $FF20–$FF23 | NR41–NR44 | Sound Channel 4 (Noise)      |
| $FF24–$FF26 | NR50–NR52 | Sound master control         |
| $FF30–$FF3F | Wave RAM   | Channel 3 wave pattern        |
| $FF40     | LCDC       | LCD control                    |
| $FF41     | STAT       | LCD status                     |
| $FF42     | SCY        | Scroll Y                       |
| $FF43     | SCX        | Scroll X                       |
| $FF44     | LY         | Current scanline               |
| $FF45     | LYC        | LY compare                     |
| $FF46     | DMA        | OAM DMA transfer               |
| $FF47     | BGP        | Background palette             |
| $FF48     | OBP0       | Object palette 0               |
| $FF49     | OBP1       | Object palette 1               |
| $FF4A     | WY         | Window Y position              |
| $FF4B     | WX         | Window X position              |
| $FFFF     | IE         | Interrupt enable               |

This covers all I/O registers in the original Game Boy. Let me know if you want details on any specific register or its usage!