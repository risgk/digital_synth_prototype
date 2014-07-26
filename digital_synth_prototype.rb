PWM_RATE = 62500
AUDIO_RATE = 31250

WAVE_SAW             = 0x00
WAVE_SQUARE          = 0x01
WAVE_TRIANGLE        = 0x02
WAVE_SINE            = 0x03
WAVE_PULSE_12_5      = 0x04
WAVE_PULSE_25        = 0x05
WAVE_PSEUDO_TRIANGLE = 0x06

$wave_table_saw_128 = [
  0x80, 0xF5, 0xD9, 0xE8, 0xDC, 0xE4, 0xDC, 0xE1, 0xDB, 0xDF, 0xDA, 0xDD, 0xD9, 0xDB, 0xD8, 0xDA,
  0xD6, 0xD8, 0xD5, 0xD6, 0xD3, 0xD4, 0xD2, 0xD3, 0xD0, 0xD1, 0xCF, 0xD0, 0xCD, 0xCE, 0xCC, 0xCC,
  0xCA, 0xCB, 0xC9, 0xC9, 0xC7, 0xC7, 0xC6, 0xC6, 0xC4, 0xC4, 0xC3, 0xC3, 0xC1, 0xC1, 0xC0, 0xC0,
  0xBE, 0xBE, 0xBC, 0xBC, 0xBB, 0xBB, 0xB9, 0xB9, 0xB8, 0xB8, 0xB6, 0xB6, 0xB5, 0xB4, 0xB3, 0xB3,
  0xB2, 0xB1, 0xB0, 0xB0, 0xAE, 0xAE, 0xAD, 0xAC, 0xAB, 0xAB, 0xAA, 0xA9, 0xA8, 0xA8, 0xA7, 0xA6,
  0xA5, 0xA5, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9C, 0x9B, 0x9A, 0x9A,
  0x99, 0x98, 0x97, 0x96, 0x95, 0x95, 0x94, 0x93, 0x92, 0x92, 0x91, 0x90, 0x8F, 0x8E, 0x8E, 0x8D,
  0x8C, 0x8B, 0x8A, 0x8A, 0x89, 0x88, 0x87, 0x87, 0x86, 0x85, 0x84, 0x83, 0x83, 0x82, 0x81, 0x80,
  0x7F, 0x7F, 0x7E, 0x7D, 0x7C, 0x7C, 0x7B, 0x7A, 0x79, 0x78, 0x78, 0x77, 0x76, 0x75, 0x75, 0x74,
  0x73, 0x72, 0x71, 0x71, 0x70, 0x6F, 0x6E, 0x6D, 0x6D, 0x6C, 0x6B, 0x6A, 0x6A, 0x69, 0x68, 0x67,
  0x66, 0x65, 0x65, 0x64, 0x63, 0x62, 0x62, 0x61, 0x60, 0x5F, 0x5F, 0x5E, 0x5D, 0x5C, 0x5C, 0x5A,
  0x5A, 0x59, 0x58, 0x57, 0x57, 0x56, 0x55, 0x54, 0x54, 0x53, 0x52, 0x51, 0x51, 0x4F, 0x4F, 0x4E,
  0x4D, 0x4C, 0x4C, 0x4B, 0x4A, 0x49, 0x49, 0x47, 0x47, 0x46, 0x46, 0x44, 0x44, 0x43, 0x43, 0x41,
  0x41, 0x3F, 0x3F, 0x3E, 0x3E, 0x3C, 0x3C, 0x3B, 0x3B, 0x39, 0x39, 0x38, 0x38, 0x36, 0x36, 0x34,
  0x35, 0x33, 0x33, 0x31, 0x32, 0x2F, 0x30, 0x2E, 0x2F, 0x2C, 0x2D, 0x2B, 0x2C, 0x29, 0x2A, 0x27,
  0x29, 0x25, 0x27, 0x24, 0x26, 0x22, 0x25, 0x20, 0x24, 0x1E, 0x23, 0x1B, 0x23, 0x17, 0x26, 0x0A,
]

$wave_table_saw = [
  $wave_table_saw_128,
]

$wave_tables = [
  $wave_table_saw,
  $wave_table_saw,
  $wave_table_saw,
  $wave_table_saw,
  $wave_table_saw,
  $wave_table_saw,
  $wave_table_saw
]

$note_to_freq = [
  0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F,
  0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F,
  0x0044, 0x0048, 0x004C, 0x0051, 0x0056, 0x005B, 0x0060, 0x0066, 0x006C, 0x0073, 0x007A, 0x0081,
  0x0089, 0x0091, 0x0099, 0x00A3, 0x00AC, 0x00B7, 0x00C1, 0x00CD, 0x00D9, 0x00E6, 0x00F4, 0x0102,
  0x0112, 0x0122, 0x0133, 0x0146, 0x0159, 0x016E, 0x0183, 0x019B, 0x01B3, 0x01CD, 0x01E8, 0x0205,
  0x0224, 0x0245, 0x0267, 0x028C, 0x02B3, 0x02DC, 0x0307, 0x0336, 0x0366, 0x039A, 0x03D1, 0x040B,
  0x0449, 0x048A, 0x04CF, 0x0518, 0x0566, 0x05B8, 0x060F, 0x066C, 0x06CD, 0x0735, 0x07A3, 0x0817,
  0x0892, 0x0915, 0x099F, 0x0A31, 0x0ACD, 0x0B71, 0x0C1F, 0x0CD8, 0x0D9B, 0x0E6A, 0x0F46, 0x102E,
  0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F,
  0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F,
  0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F, 0x000F,
]

def high_byte(us)
  us >> 8
end

def low_byte(us)
  us & 0xFF
end

class OSC
  def initialize
    @wave_table = $wave_tables[WAVE_SAW]
    @freq = $note_to_freq[60]
    @phase = 0
  end

  def set_wave(wave)
    @wave_table = $wave_tables[wave]
  end

  def set_note(note)
    @freq = $note_to_freq[note]
  end

  def reset
    @phase = 0
  end

  def clock
    @phase += @freq
    @phase &= 0xFFFF
    curr_index = high_byte(@phase)
    next_index = curr_index + 1
    next_index &= 0xFF
    next_weight = low_byte(@phase)
    curr_weight = 0x100 - next_weight
    level = high_byte(@wave_table[0][curr_index] * curr_weight + @wave_table[0][next_index] * next_weight)
    return level
  end
end

osc = [OSC.new, OSC.new, OSC.new]
osc[0].set_wave(WAVE_SAW)
osc[1].set_wave(WAVE_SQUARE)
osc[2].set_wave(WAVE_TRIANGLE)

envelope_lead = [0,40,256,0]
envelope_level_max = 256
A = 0
D = 1
S = 2
R = 3

envelope = envelope_lead
eg_level = 0

NOTE_ON  = 0x80
NOTE_OFF = 0x90

eg_state = A
eg_rest = 0

class LPF
  attr_accessor :x_0, :x_1, :x_2, :y_0, :y_1, :y_2
  attr_accessor :b0_a0, :b1_a0, :b2_a0, :a1_a0, :a2_a0
end

lpf = LPF.new

lpf.x_0, lpf.x_1, lpf.x_2, lpf.y_0, lpf.y_1, lpf.y_2 = 0, 0, 0, 0, 0, 0

  lpf.b0_a0, lpf.b1_a0, lpf.b2_a0, lpf.a1_a0, lpf.a2_a0 = 19, 37, 19,   0, 11 # f_cutoff = AUDIO_RATE /  4, Q = 0.7071
# lpf.b0_a0, lpf.b1_a0, lpf.b2_a0, lpf.a1_a0, lpf.a2_a0 =  6, 12,  6, -60, 21 # f_cutoff = AUDIO_RATE /  8, Q = 0.7071
# lpf.b0_a0, lpf.b1_a0, lpf.b2_a0, lpf.a1_a0, lpf.a2_a0 =  2,  4,  2, -93, 37 # f_cutoff = AUDIO_RATE / 16, Q = 0.7071

midi_in_prev = 0xFF
midi_in_pprev = 0xFF

STDIN.binmode
File::open("a.wav","w+b") do |file|
  data_size = 2 * AUDIO_RATE * 9
  file_size = data_size + 36
  file.write("RIFF")
  file.write([file_size - 8].pack("V"))
  file.write("WAVE")
  file.write("fmt ")
  file.write([16].pack("V"))
  file.write([1].pack("v"))
  file.write([1].pack("v"))
  file.write([AUDIO_RATE].pack("V"))
  file.write([AUDIO_RATE * 2].pack("V"))
  file.write([1 * 2].pack("v"))
  file.write([16].pack("v"))
  file.write("data")
  file.write([data_size].pack("V"))

  while(c = STDIN.read(1)) do
    b = c.ord

    if (midi_in_pprev == NOTE_ON && midi_in_prev <= 0x7F && b <= 0x7F)
      note = midi_in_prev
      osc[0].set_note(note - 24)
#     osc[0].reset
      eg_state = A
      eg_level = 0
      eg_rest = envelope[eg_state]
    end
    if (midi_in_pprev == NOTE_OFF && midi_in_prev <= 0x7F && b <= 0x7F)
      eg_state = R
      eg_rest = envelope[eg_state]
    end
    midi_in_pprev = midi_in_prev
    midi_in_prev = b

    for i in (0...10) do

      # OSC
      level = osc[0].clock

      # EG
      eg_rest -= 1
      case (eg_state)
      when A
        if eg_rest <= 0
          if eg_level < envelope_level_max
            eg_level += 1
            eg_rest = envelope[eg_state]
          else
            eg_state = D
            eg_rest = envelope[eg_state]
          end
        end
      when D
        if eg_rest <= 0
          if eg_level > envelope[2]
            eg_level -= 1
            eg_rest = envelope[eg_state]
          else
            eg_state = S
            eg_rest = 9999
          end
        end
      when S
      when R
        if eg_rest <= 0
          if eg_level > 0
            eg_level -= 1
            eg_rest = envelope[eg_state]
          else
            eg_level = 0
            eg_rest = 9999
          end
        end
      end

      # AMP
      level = level

      # MIXER
      level = level

      # LPF
      lpf.x_0 = level
      lpf.y_0 = ((lpf.b0_a0 * lpf.x_0) + (lpf.b1_a0 * lpf.x_1) + (lpf.b2_a0 * lpf.x_2) - (lpf.a1_a0 * lpf.y_1) - (lpf.a2_a0 * lpf.y_2)) / 64;
      if (lpf.y_0 < 0)
        lpf.y_0 = 0
      end
      lpf.x_2 = lpf.x_1;
      lpf.x_1 = lpf.x_0;
      lpf.y_2 = lpf.y_1;
      lpf.y_1 = lpf.y_0;

      # PWM
      file.write([(level - 128)* 32].pack("S"))
#     file.write([(lpf.y_0 - 128) * 32].pack("S"))
    end
  end
end
