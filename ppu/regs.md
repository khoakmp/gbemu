### LCDC
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
