
# IRON LITURGY
# Industrial Drone / Sonic Pi
# Single-file composition

use_bpm 76

set :iron_amp, 1.0
set :weight, 0.8
set :density, 0.65

# I. THE MACHINE FLOOR

live_loop :machine_floor do
  use_synth :fm

  play :e1,
    divisor: 1,
    depth: 2,
    attack: 0.01,
    sustain: 0.12,
    release: 0.7,
    amp: 1.5 * get(:weight)

  sleep 2

  play :e1,
    divisor: 1,
    depth: 1,
    attack: 0.01,
    sustain: 0.05,
    release: 0.4,
    amp: 0.8 * get(:weight)

  sleep 2
end

# II. IRON IMPACT

live_loop :iron_impact do
  use_synth :pretty_bell

  if one_in(3)
    play [:e3, :bb3, :d4, :fs4].choose,
      attack: 0.001,
      sustain: 0,
      release: rrand(0.15, 1.1),
      amp: 0.65 * get(:density)
  end

  sleep [0.25, 0.5, 1, 1.5].choose
end

# III. DISSONANT MASS

live_loop :dissonant_mass do
  use_synth :dark_ambience

  with_fx :reverb, room: 1, mix: 0.7 do
    play chord(:e3, :tritone),
      attack: 3,
      sustain: 5,
      release: 5,
      amp: 0.5 * get(:iron_amp)
  end

  sleep 8
end

# IV. PRESSURE OSCILLATOR

live_loop :pressure_oscillator do
  use_synth :tb303

  with_fx :distortion, distort: 0.65 do
    play :e2,
      cutoff: 65,
      resonance: 0.85,
      attack: 0.01,
      sustain: 0.3,
      release: 0.5,
      amp: 0.8 * get(:weight)
  end

  sleep 1

  if one_in(4)
    play :bb1,
      cutoff: 55,
      resonance: 0.7,
      release: 0.3,
      amp: 0.6 * get(:weight)
  end

  sleep 1
end

# V. THE ANVIL

live_loop :the_anvil do
  sample :bd_haus,
    amp: 2.0 * get(:iron_amp),
    cutoff: 75

  sleep 4

  if one_in(2)
    sample :elec_blip,
      rate: 0.5,
      amp: 0.35 * get(:density)
  end

  sleep 4
end

# VI. COLLAPSE

live_loop :collapse do
  use_synth :fm

  if one_in(2)
    play [:e5, :f5, :bb5, :b5].choose,
      divisor: 1.5,
      depth: 3,
      attack: 0.01,
      sustain: 0.1,
      release: 0.8,
      amp: 0.3 * get(:density)
  end

  sleep [0.5, 1, 2].choose
end
