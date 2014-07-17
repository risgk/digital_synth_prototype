# digital synth prototype

PWM_RATE = 62500
AUDIO_RATE = 15625

pitch_to_freq = [
  0x0022, 0x0024, 0x0026, 0x0028, 0x002B, 0x002D, 0x0030, 0x0033, 0x0036, 0x0039, 0x003D, 0x0040,
  0x0044, 0x0048, 0x004C, 0x0051, 0x0056, 0x005B, 0x0060, 0x0066, 0x006C, 0x0073, 0x007A, 0x0081,
  0x0089, 0x0091, 0x0099, 0x00A3, 0x00AC, 0x00B7, 0x00C1, 0x00CD, 0x00D9, 0x00E6, 0x00F4, 0x0102, # C1 - B1
  0x0112, 0x0122, 0x0133, 0x0146, 0x0159, 0x016E, 0x0183, 0x019B, 0x01B3, 0x01CD, 0x01E8, 0x0205, # C2 - B2
  0x0224, 0x0245, 0x0267, 0x028C, 0x02B3, 0x02DC, 0x0307, 0x0336, 0x0366, 0x039A, 0x03D1, 0x040B, # C3 - B3
  0x0449, 0x048A, 0x04CF, 0x0518, 0x0566, 0x05B8, 0x060F, 0x066C, 0x06CD, 0x0735, 0x07A3, 0x0817, # C4 - B4
  0x0892, 0x0915, 0x099F, 0x0A31, 0x0ACD, 0x0B71, 0x0C1F, 0x0CD8, 0x0D9B, 0x0E6A, 0x0F46, 0x102E, # C5 - B5
  0x1125, 0x122A, 0x133E, 0x1463, 0x159A, 0x16E3, 0x183F, 0x19B0, 0x1B37, 0x1CD5, 0x1E8C, 0x205D, # C6 - B6
  0x224A, 0x2454, 0x267D, 0x28C7, 0x2B34, 0x2DC6, 0x307E, 0x3361, 0x366F, 0x39AB, 0x3D19, 0x40BB,
  0x4495, 0x48A9, 0x4CFB, 0x518F, 0x5668, 0x5B8C, 0x60FD, 0x66C2, 0x6CDE, 0x7357, 0x7A33, 0x8177,
  0x892A, 0x9152, 0x99F7, 0xA31E, 0xACD1, 0xB718, 0xC1FB, 0xCD84, 
]

osc_waveform_saw = [
  0x1F, 0x1E, 0x1D, 0x1C, 0x1B, 0x1A, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11, 0x10,
  0x0F, 0x0E, 0x0D, 0x0C, 0x0B, 0x0A, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00,
]
osc_waveform_pulse_12_5 = [
  0x1F, 0x1F, 0x1F, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
]
osc_waveform_pulse_25 = [
  0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
]
osc_waveform_pulse_37_5 = [
  0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
]
osc_waveform_square = [
  0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
]
osc_waveform_triangle = [
  0x10, 0x12, 0x14, 0x16, 0x18, 0x1A, 0x1C, 0x1E, 0x1F, 0x1D, 0x1B, 0x19, 0x17, 0x15, 0x13, 0x11,
  0x0F, 0x0D, 0x0B, 0x09, 0x07, 0x05, 0x03, 0x01, 0x00, 0x02, 0x04, 0x06, 0x08, 0x0A, 0x0C, 0x0E,
]
osc_waveform = osc_waveform_triangle

envelope_lead = [1,40,225,1]
envelope_level_max = 225
A = 0
D = 1
S = 2
R = 3

osc_phase = 0
envelope = envelope_lead
eg_level = 0
lfo_osc_waveform = osc_waveform_triangle
lfo_phase = 0

NOTE_ON  = 0x80
NOTE_OFF = 0x90

pitch = 60
freq = pitch_to_freq[pitch]
osc_phase = 0
eg_state = A
eg_rest = 0
lfo_rest = (AUDIO_RATE * 1 / 2)
lfo_phase = 0

class LPF
  attr_accessor :x_0, :x_1, :x_2
  attr_accessor :y_0, :y_1, :y_2
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
File::open(__FILE__ + ".wav","w+b") do |file|
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
      pitch = midi_in_prev
      freq = pitch_to_freq[pitch]
      osc_phase = 0
      osc_phase = 0
      eg_state = A
      eg_level = 0
      eg_rest = envelope[eg_state]
      lfo_rest = (AUDIO_RATE * 1 / 2)
      lfo_phase = 0
    end
    if (midi_in_pprev == NOTE_OFF && midi_in_prev <= 0x7F && b <= 0x7F)
      eg_state = R
      eg_rest = envelope[eg_state]
    end
    midi_in_pprev = midi_in_prev
    midi_in_prev = b

    for i in (0...5) do

      # LFO
      lfo_rest -= 1
      if (lfo_rest <= 0)
        lfo_rest = lfo_rest + (AUDIO_RATE / 32 / 4)
        lfo_phase += 1
        lfo_phase &= 0x1F
      end

      # OSC
      index = (osc_phase >> 11)
      next_index = (index + 1) % 32
      ratio = (osc_phase >> 8) & 0x07
#     level = osc_waveform[index] * 8
      level = osc_waveform[index] * (8 - ratio) + osc_waveform[next_index] * ratio
      osc_phase += freq
      osc_phase %= 0x10000

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
      level = level * eg_level / envelope_level_max

      # MIXER
      level = level / 4 * 4

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
      file.write([level * 32].pack("S"))
#     file.write([lpf.y_0 * 32].pack("S"))
    end
  end
end
