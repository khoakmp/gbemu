package rs

const (
	FlagC uint8 = 4
	FlagH uint8 = 5
	FlagN uint8 = 6
	FlagZ uint8 = 7
)

type Flag struct{ data uint8 }

func (f *Flag) SetFlag(flag uint8, val bool) { f.setBit(flag, val) }
func (f *Flag) GetFlag(flag uint8) bool      { return f.getBit(flag) }
func (f *Flag) Read8Bit() uint8              { return f.data }
func (f *Flag) Write8Bit(val uint8)          { f.data = val }
func (f *Flag) ClearAll()                    { f.data = 0 }

func (f *Flag) getBit(bit uint8) bool {
	return f.data&uint8(1<<bit) != 0
}

func (f *Flag) setBit(bit uint8, val bool) {
	if val {
		f.data |= uint8(1 << bit)
		return
	}
	f.data &= ^uint8(1 << bit)
}
