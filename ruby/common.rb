require './midi_in'
require './osc'
require './mixer'
require './filter'
require './amp'
require './eg'

AUDIO_RATE      = 31250
NOTE_NUMBER_MIN = 24
NOTE_NUMBER_MAX = 96

WAVEFORM_SAW      = 0
WAVEFORM_SQUARE   = 1
WAVEFORM_TRIANGLE = 2

MIDI_NOTE_ON             = 0x80
MIDI_NOTE_OFF            = 0x90
MIDI_CONTROL_CHANGE      = 0xB0
MIDI_PROGRAM_CHANGE      = 0xC0
MIDI_SYSTEM_MESSAGES_MIN = 0xF0
MIDI_EOX                 = 0xF7
MIDI_DATA_BYTE_MAX       = 0x7F

CC_OSC1_WAVEFORM    = 40
CC_OSC2_WAVEFORM    = 41
CC_OSC2_COARSE_TUNE = 42
CC_OSC2_FINE_TUNE   = 43
CC_OSC3_WAVEFORM    = 44
CC_OSC3_COARSE_TUNE = 45
CC_OSC3_FINE_TUNE   = 46
CC_EG_SUSTAIN       = 70
CC_FILTER_RESONANCE = 71
CC_EG_RELEASE       = 72
CC_EG_ATTACK        = 73
CC_FILTER_CUTOFF    = 74
CC_EG_DECAY         = 75
CC_FILTER_ENVELOPE  = 81

PC_VRA_LEAD        = 0
PC_SAW_LEAD        = 1
PC_SAW_LEAD_BASS   = 2
PC_SAW_LEAD_FIFTH  = 3
PC_SAW_LEAD_EIGHTH = 4
PC_SQUARE_LEAD     = 5
PC_SYNTH_BASS      = 6
PC_SYNTH_BRASS     = 7
PC_SYNTH_STRINGS   = 8
PC_SYNTH_PAD       = 9
PC_TRUE_NUMBER_MAX = 9

def high_byte(us)
  us >> 8
end

def low_byte(us)
  us & 0xFF
end

$osc1 = Osc.new
$osc2 = Osc.new
$osc3 = Osc.new
$mixer = Mixer.new
$filter = Filter.new
$amp = Amp.new
$eg = EG.new
$midi_in = MIDIIn.new
