Sure! The **Game Boy ROM header** is a special section in every `.gb` file (from offset `0x0100` to `0x014F`) that provides metadata for the system or emulator to correctly load and run the game.

Here’s a full breakdown:

---

### 📄 **Game Boy ROM Header Map (from `0x0100` to `0x014F`)**

| Offset       | Size | Description |
|--------------|------|-------------|
| `0x0100`     | 4    | **Entry Point** — Usually a jump instruction (e.g., `JP 0150h`) |
| `0x0104`     | 48   | **Nintendo Logo** — Must match exact bytes or the ROM won’t boot |
| `0x0134-0143`| 16   | **Title** — Game title in ASCII (padded with 0s) |
| `0x013F`     | 1    | **CGB Flag** — Indicates Game Boy Color compatibility |
| `0x0144-0145`| 2    | **New Licensee Code** — Used in newer games |
| `0x0146`     | 1    | **SGB Flag** — 0x03 if Super Game Boy functions used |
| `0x0147`     | 1    | **Cartridge Type** — MBC type + RAM + battery, etc. |
| `0x0148`     | 1    | **ROM Size** — Number of ROM banks |
| `0x0149`     | 1    | **RAM Size** — External RAM size |
| `0x014A`     | 1    | **Destination Code** — 0 = Japanese, 1 = Non-Japanese |
| `0x014B`     | 1    | **Old Licensee Code** — Pre-1997 licensee codes |
| `0x014C`     | 1    | **Mask ROM Version Number** |
| `0x014D`     | 1    | **Header Checksum** — Verifies the integrity of header |
| `0x014E-014F`| 2    | **Global Checksum** — Checks entire ROM (optional) |

---

### 🔍 Important Fields (explained deeper)

#### 🔸 `0x0104–0x0133` — **Nintendo Logo**
Must match this exact 48-byte pattern (or Game Boy will halt):
```hex
CE ED 66 66 CC 0D 00 0B 03 73 00 83 00 0C 00 0D
00 08 11 1F 88 89 00 0E DC CC 6E E6 DD DD D9 99
BB BB 67 63 6E 0E EC CC DD DC 99 9F BB B9 33 3E
```

---

#### 🔸 `0x0134–0x0143` — **Game Title**
- Max 16 ASCII chars, padded with `00` if shorter.
- In CGB mode, the last part might include manufacturer code and flags.

---

#### 🔸 `0x0147` — **Cartridge Type (MBC)**
Examples:
| Hex | Description                |
|-----|----------------------------|
| 00  | ROM ONLY                   |
| 01  | MBC1                      |
| 03  | MBC1 + RAM + Battery      |
| 13  | MBC3 + RAM + Battery      |
| 19  | MBC5                      |
| 1B  | MBC5 + RAM + Battery      |

---

#### 🔸 `0x0148` — **ROM Size**
| Value | Size         | Banks |
|--------|--------------|-------|
| 00     | 32 KB        | 2     |
| 01     | 64 KB        | 4     |
| 02     | 128 KB       | 8     |
| 03     | 256 KB       | 16    |
| 04     | 512 KB       | 32    |
| 05     | 1 MB         | 64    |

---

#### 🔸 `0x0149` — **RAM Size**
| Value | RAM Size     |
|--------|--------------|
| 00     | None         |
| 01     | 2 KB         |
| 02     | 8 KB         |
| 03     | 32 KB        |
| 04     | 128 KB       |

---

#### 🔸 `0x014D` — **Header Checksum**
Checksum of values between `0x0134–0x014C`. Calculated as:
```c
x = 0;
for (i = 0x0134; i <= 0x014C; i++)
    x = x - header[i] - 1;
```

---

Want to decode a specific header from a `.gb` file? You can give me the hex bytes from `0x0100` to `0x014F`, and I’ll walk you through it.