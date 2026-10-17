# IRON LITURGY

### GENERATIVE INDUSTRIAL SOUND ENGINE

**Sonic Pi · Ruby · Procedural Audio · Real-Time Synthesis**

---

> STEEL / PRESSURE / DISSONANCE / COLLAPSE

IRON LITURGY is a standalone generative audio composition engineered in Sonic Pi using Ruby. Six concurrent synthesis loops construct an industrial sound environment from sub-bass oscillation, metallic impacts, dissonant harmonic structures, and probabilistic sonic events.

The system transforms musical parameters into a continuously evolving composition. Rather than relying on prerecorded audio, it generates sound through programmable synthesis, rhythmic scheduling, and randomized event selection.

---

## SOUND DESIGN

| ENGINE | FUNCTION |
|:--|:--|
| MACHINE FLOOR | FM synthesis generates low-frequency mechanical pulses. |
| IRON IMPACT | Probabilistic note selection produces irregular metallic tones. |
| DISSONANT MASS | Sustained chord structures create harmonic tension. |
| PRESSURE OSCILLATOR | TB-303 synthesis and distortion generate aggressive bass textures. |
| THE ANVIL | Programmed percussion establishes a heavy rhythmic foundation. |
| COLLAPSE | High-register FM synthesis introduces unstable metallic accents. |

## TECHNICAL IMPLEMENTATION

### Concurrent synthesis architecture

Six independent `live_loop` processes run simultaneously, coordinating rhythmic layers through Sonic Pi's timing system.

### Procedural event generation

Probability functions, randomized pitch selection, and variable sleep intervals introduce controlled unpredictability into the composition.

### Parameterized sound control

Global runtime parameters regulate harmonic intensity, low-frequency weight, and event density. Individual synthesis voices use configurable amplitude envelopes and synthesis settings.

### Real-time audio processing

Built-in Sonic Pi synthesis engines and effects generate the composition locally, without external sample libraries or third-party audio dependencies.

## SYSTEM PARAMETERS

```ruby
use_bpm 76

set :iron_amp, 1.0
set :weight, 0.8
set :density, 0.65
```

| PARAMETER | PURPOSE |
|:--|:--|
| `iron_amp` | Controls harmonic and percussion intensity. |
| `weight` | Controls the strength of low-frequency layers. |
| `density` | Controls the intensity of probabilistic metallic events. |

## REQUIREMENTS

- [Sonic Pi](https://sonic-pi.net/)
- Ruby-compatible Sonic Pi live-coding environment
- Audio output device

No external samples, paid dependencies, or additional project files are required.

## EXECUTION

1. Clone or download this repository.
2. Open `iron_liturgy.rb` in Sonic Pi.
3. Press **Run** to initialize the synthesis loops.
4. Modify the parameters and source code to alter the sound.
5. Press **Stop** to terminate playback.

GitHub serves as the source repository. Audio synthesis and execution occur locally in Sonic Pi.

## PROJECT STRUCTURE

```text
IRON-LITURGY/
└── iron_liturgy.rb
```

## DEVELOPMENT FOCUS

- Generative audio programming
- Concurrent musical processes
- Probabilistic sequencing
- Algorithmic sound design
- Real-time synthesis and effects processing
- Parameter-driven composition

---

**IRON LITURGY / 001**

*An engineered system for industrial sound generation.*

`SONIC PI` · `RUBY` · `GENERATIVE AUDIO` · `INDUSTRIAL DRONE`
