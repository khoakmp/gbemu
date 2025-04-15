### **Sound Register List**

### **Channel 1 – Square wave + Sweep**

| Address | Name | Description |
| --- | --- | --- |
| `0xFF10` | NR10 | Sweep register |
| `0xFF11` | NR11 | Sound length / Wave pattern duty |
| `0xFF12` | NR12 | Volume envelope |
| `0xFF13` | NR13 | Frequency (low 8 bits) |
| `0xFF14` | NR14 | Frequency (high 3 bits) + Trigger |

### **Channel 2 – Square wave**

| Address | Name | Description |
| --- | --- | --- |
| `0xFF16` | NR21 | Sound length / Wave pattern duty |
| `0xFF17` | NR22 | Volume envelope |
| `0xFF18` | NR23 | Frequency (low 8 bits) |
| `0xFF19` | NR24 | Frequency (high 3 bits) + Trigger |

### **Channel 3 – Wave channel**

| Address | Name | Description |
| --- | --- | --- |
| `0xFF1A` | NR30 | DAC power (on/off) |
| `0xFF1B` | NR31 | Sound length |
| `0xFF1C` | NR32 | Output level |
| `0xFF1D` | NR33 | Frequency (low 8 bits) |
| `0xFF1E` | NR34 | Frequency (high 3 bits) + Trigger |
| `0xFF30`–`0xFF3F` | Wave RAM | 32 bytes (16 x 4-bit samples) for waveform |

### **Channel 4 – Noise channel**

| Address | Name | Description |
| --- | --- | --- |
| `0xFF20` | NR41 | Sound length |
| `0xFF21` | NR42 | Volume envelope |
| `0xFF22` | NR43 | Polynomial counter (noise freq) |
| `0xFF23` | NR44 | Control (length enable + trigger) |

### **Sound Control Registers (Global)**