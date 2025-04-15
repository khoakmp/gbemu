## LCD STAT Register

The **STAT (LCD Status) register** in the Game Boy, located at memory address **$FF41**, is an 8-bit register that serves as both a status indicator and a control mechanism for the **PPU (Picture Processing Unit)**. It provides information about the PPU’s current operating mode, tracks the LY=LYC coincidence, and allows the CPU to configure interrupt conditions related to the LCD. Here’s a detailed breakdown:

---

### STAT Register Layout

| Bit | Name | Description | Read/Write |
| --- | --- | --- | --- |
| 7 | Unused | Always reads as 1 | Read-only |
| 6 | LYC=LY Interrupt Enable | Enables interrupt when LY = LYC | Read/Write |
| 5 | Mode 2 Interrupt Enable | Enables interrupt during Mode 2 (OAM) | Read/Write |
| 4 | Mode 1 Interrupt Enable | Enables interrupt during Mode 1 (V-Blank) | Read/Write |
| 3 | Mode 0 Interrupt Enable | Enables interrupt during Mode 0 (H-Blank) | Read/Write |
| 2 | LYC=LY Coincidence Flag | 1 if LY = LYC, 0 otherwise | Read-only |
| 1-0 | Mode Flag | Current PPU mode (00, 01, 10, 11) | Read-only |

---

### Bit-by-Bit Description

### **Bit 7: Unused**

- **Value**: Always reads as 1.
- **Purpose**: This bit is not used by the Game Boy hardware. Writing to it has no effect, and it’s typically ignored in programming.

### **Bit 6: LYC=LY Interrupt Enable**

- **Value**: 0 (disabled) or 1 (enabled).
- **Purpose**: When set to 1, an **LCD STAT interrupt** is requested whenever the **LY (Line Y)** register ($FF44) equals the **LYC (LY Compare)** register ($FF45), as indicated by bit 2.
- **Read/Write**: Writable by the CPU (e.g., via `LD [$FF41], A`).

### **Bit 5: Mode 2 Interrupt Enable**

- **Value**: 0 (disabled) or 1 (enabled).
- **Purpose**: When set to 1, an LCD STAT interrupt is requested when the PPU enters **Mode 2 (OAM Search)**, the phase where it scans sprite data for the current scanline.
- **Read/Write**: Writable by the CPU.

### **Bit 4: Mode 1 Interrupt Enable**

- **Value**: 0 (disabled) or 1 (enabled).
- **Purpose**: When set to 1, an LCD STAT interrupt is requested when the PPU enters **Mode 1 (V-Blank)**, which occurs during scanlines 144–153.
- **Read/Write**: Writable by the CPU.
- **Note**: This overlaps with the dedicated V-Blank interrupt ($0040), but it’s triggered via the STAT mechanism ($0048).

### **Bit 3: Mode 0 Interrupt Enable**

- **Value**: 0 (disabled) or 1 (enabled).
- **Purpose**: When set to 1, an LCD STAT interrupt is requested when the PPU enters **Mode 0 (H-Blank)**, the idle period after drawing a scanline.
- **Read/Write**: Writable by the CPU.

### **Bit 2: LYC=LY Coincidence Flag**

- **Value**: 0 (LY ≠ LYC) or 1 (LY = LYC).
- **Purpose**: Set to 1 by the PPU when the current scanline (LY) matches the value in LYC. Cleared to 0 otherwise.
- **Read/Write**: Read-only; controlled by the PPU hardware.
- **Interrupt Trigger**: If bit 6 is 1, this flag’s transition to 1 requests an interrupt.

### **Bits 1-0: Mode Flag**

- **Values**:
    - **00 (0)**: Mode 0 (H-Blank) – PPU is idle after drawing a scanline.
    - **01 (1)**: Mode 1 (V-Blank) – PPU is in vertical blanking (LY = 144–153).
    - **10 (2)**: Mode 2 (OAM Search) – PPU is scanning OAM for sprites.
    - **11 (3)**: Mode 3 (Drawing) – PPU is rendering the scanline to the screen.
- **Purpose**: Indicates the PPU’s current operating mode, updated automatically as it cycles through rendering phases.
- **Read/Write**: Read-only; reflects PPU state.

---

### Functionality

1. **Status Reporting**:
    - Bits 1-0 show the PPU’s real-time mode, letting the CPU know what the PPU is doing (e.g., drawing, H-Blank).
    - Bit 2 flags when LY matches LYC, useful for timing events at specific scanlines.
2. **Interrupt Control**:
    - Bits 3–6 define conditions for triggering an **LCD STAT interrupt** (vector $0048).
    - An interrupt is requested (IF bit 1 set) if **any** enabled condition is met:
        - Bit 3 = 1 and PPU enters Mode 0.
        - Bit 4 = 1 and PPU enters Mode 1.
        - Bit 5 = 1 and PPU enters Mode 2.
        - Bit 6 = 1 and LY = LYC (bit 2 transitions to 1).
    - The CPU must also have **IME** enabled and **IE bit 1** set for the interrupt to occur.
3. **CPU Interaction**:
    - The CPU can read STAT to monitor PPU state (e.g., polling for H-Blank).
    - The CPU can write to bits 3–6 to enable/disable interrupts, but bits 0–2 and 7 are unaffected by writes.

---

### Example Usage

### Enable LYC=LY Interrupt:

```
LD A, %01000000  ; Bit 6 = 1 (LYC=LY interrupt enabled)
LD [$FF41], A    ; Write to STAT

```

- If LY = LYC, bit 2 sets, and an interrupt is requested (assuming IE bit 1 and IME are set).

### Check PPU Mode:

```
LD A, [$FF41]    ; Read STAT
AND %00000011    ; Mask to get bits 1-0 (mode)
CP %00           ; Compare with Mode 0 (H-Blank)
JR Z, InHBlank   ; Jump if in H-Blank

```

---

### Key Notes

- **Read Behavior**: Reading STAT always returns the current PPU state for bits 0–2, with bit 7 as 1 and bits 3–6 as previously set by the CPU.
- **Write Behavior**: Writing only affects bits 3–6; bits 0–2 and 7 are controlled by hardware.
- **Timing**: Mode transitions and LY=LYC checks happen every scanline (456 cycles), making STAT a real-time snapshot.

The STAT register is a vital bridge between the CPU and PPU, enabling precise control over display-related interrupts and status monitoring. Let me know if you want more examples or details!

## IF, IE, IME

In the Game Boy, **IF**, **IE**, and **IME** are critical components of the interrupt system, working together to manage how and when interrupts (like V-Blank or LCD STAT) are requested, enabled, and processed by the CPU. Here’s a clear breakdown of each:

---

### **IF (Interrupt Flag) Register**

- **Location**: $FF0F
- **Purpose**: Indicates which interrupts have been **requested** by the hardware.
- **Bits**:
    - Bit 4: Joypad Interrupt
    - Bit 3: Serial Interrupt
    - Bit 2: Timer Interrupt
    - Bit 1: LCD STAT Interrupt (e.g., LYC=LY, Mode 0, 1, or 2)
    - Bit 0: V-Blank Interrupt
    - Bits 5–7: Unused (typically read as 1)
- **Behavior**:
    - When hardware (e.g., PPU, timer) triggers an interrupt, it sets the corresponding bit in IF to **1**. For example, when LY = LYC and STAT bit 6 is 1, the PPU sets IF bit 1.
    - The CPU clears the bit to **0** when it handles the interrupt (automatically during the jump to the vector).
    - The CPU can also write to IF to manually request an interrupt (though this is rare).
- **Read/Write**: Fully readable and writable by the CPU.

---

### **IE (Interrupt Enable) Register**

- **Location**: $FFFF
- **Purpose**: Specifies which interrupts are **allowed** to trigger the CPU.
- **Bits**:
    - Bit 4: Joypad Interrupt
    - Bit 3: Serial Interrupt
    - Bit 2: Timer Interrupt
    - Bit 1: LCD STAT Interrupt
    - Bit 0: V-Blank Interrupt
    - Bits 5–7: Unused (typically 0 or ignored)
- **Behavior**:
    - If a bit is **1**, that interrupt type is enabled and can cause the CPU to jump to its vector when requested (assuming IME is on).
    - If a bit is **0**, the corresponding interrupt is disabled, and even if IF sets its bit, no jump occurs.
    - For example, if IE bit 0 = 1 and IF bit 0 = 1 (V-Blank), the CPU will handle it if IME is enabled.
- **Read/Write**: Fully readable and writable by the CPU.

---

### **IME (Interrupt Master Enable)**

- **Location**: Not a register; it’s an internal CPU flag.
- **Purpose**: Acts as a global **on/off switch** for all interrupts.
- **Values**:
    - **1**: Interrupts are enabled. If IF and IE bits align for an interrupt, the CPU will process it.
    - **0**: Interrupts are disabled. No interrupts will be handled, even if IF and IE bits are set.
- **Control**:
    - Set to **1** with the `EI` (Enable Interrupts) instruction.
    - Set to **0** with the `DI` (Disable Interrupts) instruction.
    - Automatically set to **0** when the CPU jumps to an interrupt vector (to prevent nested interrupts), and restored to **1** by `RETI` (Return from Interrupt).
- **Behavior**:
    - IME is checked after every instruction. If IME = 1 and an enabled interrupt is pending (IF & IE ≠ 0), the CPU handles it before the next instruction.
    - If IME = 0, interrupt requests (IF bits) can still be set, but the CPU ignores them until IME is re-enabled.

---

### How They Work Together

1. **Interrupt Request (IF)**:
    - Hardware (e.g., PPU during V-Blank or LYC=LY) sets a bit in IF to 1 to signal an interrupt is needed.
    - Example: LY = LYC → STAT bit 2 = 1 → IF bit 1 = 1 (if STAT bit 6 = 1).
2. **Interrupt Enable Check (IE)**:
    - The CPU checks IE to see if that interrupt type is allowed. If the corresponding IE bit is 0, the request is ignored (though IF remains set).
3. **Master Enable Check (IME)**:
    - If IME = 1 and an enabled interrupt is requested (IF bit & IE bit = 1), the CPU:
        - Disables IME (sets it to 0).
        - Pushes the current PC onto the stack.
        - Jumps to the interrupt vector (e.g., $0040 for V-Blank, $0048 for LCD STAT).
    - If IME = 0, nothing happens until IME is turned back on with `EI`.
4. **Return**:
    - The ISR typically ends with `RETI`, which pops the PC from the stack and sets IME back to 1, resuming normal operation with interrupts enabled.

---

### Example: LYC=LY Interrupt

- **Setup**: LYC = 50, STAT bit 6 = 1 (LYC interrupt enabled), IE bit 1 = 1 (LCD STAT enabled), IME = 1.
- **LY = 50**:
    - PPU sets STAT bit 2 = 1 (LYC=LY).
    - Since STAT bit 6 = 1, PPU sets IF bit 1 = 1.
    - IE bit 1 = 1 and IME = 1, so CPU:
        - Sets IME = 0.
        - Pushes PC to stack.
        - Jumps to $0048.
    - ISR runs, ends with `RETI`, restoring PC and setting IME = 1.

---

### Key Differences

- **IF**: "Something happened, interrupt requested!" (Hardware-driven, writable for simulation).
- **IE**: "Which interrupts do I care about?" (CPU-configurable filter).
- **IME**: "Can I handle interrupts right now?" (Global on/off switch).

This trio ensures interrupts are flexible yet controlled, letting the Game Boy respond to events like V-Blank or joypad input efficiently. Does this clarify things? Let me know if you want examples or deeper details!

## LCDC register

The **LCDC Register** (LCD Control Register) in the Game Boy is a critical hardware register located at memory address **$FF40**. It’s an 8-bit register that controls various aspects of the Game Boy’s LCD display, including whether the screen is on, which tile data and tile maps are used, and what layers (background, window, sprites) are displayed. Each bit in the register has a specific function, and for your question about the background (BG) tile map start address, we’re particularly interested in **bit 3**.

Here’s a breakdown of the LCDC register’s bits:

- **Bit 7**: LCD Display Enable
    - 0 = Display off (screen is blank).
    - 1 = Display on (screen renders).
- **Bit 6**: Window Tile Map Select
    - 0 = $9800-$9BFF (window tile map starts here).
    - 1 = $9C00-$9FFF (window tile map starts here).
- **Bit 5**: Window Display Enable
    - 0 = Window layer disabled.
    - 1 = Window layer enabled (if positioned on-screen).
- **Bit 4**: BG & Window Tile Data Select
    - 0 = $8800-$97FF (signed tile numbering, -128 to 127).
    - 1 = $8000-$8FFF (unsigned tile numbering, 0 to 255).
    - This determines where the tile data (the actual graphics) is read from, not the tile map.
- **Bit 3**: BG Tile Map Select
    - 0 = $9800-$9BFF (BG tile map starts here).
    - 1 = $9C00-$9FFF (BG tile map starts here).
    - This is the bit that decides the start address of the background tile map, as asked in your original question.
- **Bit 2**: OBJ (Sprite) Size
    - 0 = 8x8 pixels.
    - 1 = 8x16 pixels (taller sprites).
- **Bit 1**: OBJ (Sprite) Display Enable
    - 0 = Sprites disabled.
    - 1 = Sprites enabled.
- **Bit 0**: BG/Window Display/Priority
    - 0 = BG and Window disabled (blank).
    - 1 = BG and Window enabled (rendered).
    - Note: In later models like the Game Boy Color, this bit’s behavior changes slightly for priority handling, but for the original Game Boy, it’s a simple on/off switch for the BG.

### How It Relates to the BG Tile Map

For the background tile map’s start address:

- If **LCDC Bit 3 = 0**, the BG tile map is at **$9800-$9BFF**.
- If **LCDC Bit 3 = 1**, the BG tile map is at **$9C00-$9FFF**.

The tile map itself is a 32x32 grid (1024 bytes), where each byte is an index pointing to a tile in the tile data section of VRAM (controlled by Bit 4). The Game Boy’s PPU (Picture Processing Unit) reads this map to render the background layer, scrolling it based on the SCX (Scroll X) and SCY (Scroll Y) registers ($FF43 and $FF42).

### Example

If a game sets LCDC to a binary value like **10001001** (decimal 137):

- Bit 7 = 1 (LCD on).
- Bit 3 = 0 (BG tile map at $9800-$9BFF).
- Bit 4 = 1 (Tile data at $8000-$8FFF).
- The background will render using the tile map starting at $9800.

Does that clarify things? Let me know if you want more detail on any specific bit or how it’s used in practice!