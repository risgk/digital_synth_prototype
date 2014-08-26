OPTION_BLACK_KEY_PROGRAM_CHANGE = true
OPTION_RECORDING                = false

MIDI_CH = 0
AUDIO_RATE = 31250
NOTE_NUMBER_MIN = 24
NOTE_NUMBER_MAX = 96

PROGRAM_SIZE = 14
SUB_OSC_LEAD = 0
SAW_LEAD     = 1
SQUERE_LEAD  = 2
SYNTH_PAD    = 3
SYNTH_BASS   = 4

SAWTOOTH = 0
SQUARE   = 1
TRIANGLE = 2
SINE     = 3

ON  = 127
OFF = 0

DATA_BYTE_MAX         = 0x7F
DATA_BYTE_INVALID     = 0x80
STATUS_BYTE_INVALID   = 0x7F
STATUS_BYTE_MIN       = 0x80
NOTE_ON               = (0x90 | MIDI_CH)
NOTE_OFF              = (0x80 | MIDI_CH)
CONTROL_CHANGE        = (0xB0 | MIDI_CH)
PROGRAM_CHANGE        = (0xC0 | MIDI_CH)
SYSTEM_MESSAGE_MIN    = 0xF0
SYSTEM_EXCLUSIVE      = 0xF0
TIME_CODE             = 0xF1
SONG_POSITION         = 0xF2
SONG_SELECT           = 0xF3
EOX                   = 0xF7
REAL_TIME_MESSAGE_MIN = 0xF8
ACTIVE_SENSING        = 0xFE

VCO_1_WAVEFORM    = 40
VCO_1_COARSE_TUNE = 41
VCO_2_WAVEFORM    = 42
VCO_2_COARSE_TUNE = 43
VCO_2_FINE_TUNE   = 44
VCO_3_WAVEFORM    = 45
VCO_3_COARSE_TUNE = 46
VCO_3_FINE_TUNE   = 47
VCF_CUTOFF        = 48
VCF_RESONANCE     = 49
VCF_ENVELOPE      = 50
EG_ATTACK         = 51
EG_DECAY_RELEASE  = 52
EG_SUSTAIN        = 53
ALL_NOTES_OFF     = 123

def high_byte(ui16)
  ui16 >> 8
end

def low_byte(ui16)
  ui16 & 0xFF
end
