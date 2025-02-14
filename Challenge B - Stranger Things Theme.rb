Challenge B - Stranger Things Theme

use_bpm 160
use_synth :saw

live_loop :beat do
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 3.5
end


2.times do
  sleep 6
  synth :prophet
end

1.times do
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end

live_loop :hum do
  sleep 10
  sample :bass_thick_c, amp: 2
end

live_loop :bum do
  sleep 8
  synth :saw, beat_stretch: 10
end

live_loop :melody do
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end
