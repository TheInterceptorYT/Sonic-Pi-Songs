#Terraria RE-MIX Underground Remix!!!!!

use_bpm 140
use_synth :piano

intro = "C:/Users/David_Diaz/Downloads/WAWAW.wav"

ending = "C:/Users/David_Diaz/Downloads/terraria-item.mp3"

notes = [:g4,:f4,:g3,:g2,:f2,:e2,:c2,:d2,:g4,:f4,:g3,:g2,:f2,:e2,:c2,:d2]
sleep = [1,1,1,0.5,0.5,0.5,0.5,1,1,1,1,0.5,0.5,0.5,0.5,0.5]
i = 0

sleep 2
16.times do
  play(notes[i])
  sleep(sleep[i])
  i = i + 1
end

define :beatdos do |note1, note2|
  play note1, amp: 0.3
  sleep 1
  play note2, amp: 0.3
end

define :measure1n3 do
  play :g1, sustain: 6
  sleep 3.5
  play :e1, sustain: 6
  play :e2, sustain: 6
  sleep 3.5
  play :g1, sustain: 6
  play :g2, sustain: 6
  sleep 3.5
end
define :measure2 do
  play :g4
  sleep 0.5
  play :f4
  sleep 0.5
  play :g3
end
define :measure4 do
  play :g4
  sleep 0.5
  play :f4
  sleep 0.5
  play :g3, sustain: 2
  sleep 3
end
define :measure5 do
  play :c4, sustain: 1
  play :c5, sustain: 1
  sleep 1.5
  play :g2, sustain: 1
  play :g3, sustain: 1
  sleep 1.5
end
define :measure6 do
  play :g4
  play :g5
  sleep 1
  play :f4
  play :f5
  sleep 0.5
  play :d4
  play :d5
  sleep 0.5
  play :f3
  play :f4
  sleep 0.5
  play :g3
  play :g4
  sleep 1
  play :g2
  play :g3
  sleep 1
  play :g2
  play :g3
  sleep 0.5
  play :g4
  play :g5
  sleep 0.5
  play :g2
  play :g3
  sleep 0.5
  play :f4
  play :f5
  sleep 0.5
  play :g2
  play :g3
  sleep 0.5
  play :b2
  play :b3
  sleep 0.5
  play :f2
  play :f3
  sleep 0.5
  play :g2
  play :g3
  sleep 0.5
  play :g4
  play :g5
  sleep 0.5
  play :g2
  play :g3
  sleep 0.5
  play :f4
  play :f5
  sleep 0.5
  play :g4
  play :g5
  sleep 1
  play :f4
  play :f5
  play :f6
  sleep 1
  play :g4
  play :g5
  play :g6
  sleep 1
  play :g2
  play :g3
  play :g4
  play :g5
  sleep 3
end
define :measure7 do
  play :cf2
  sleep 0.5
  play :f2
  sleep 0.5
  play :g2
  sleep 0.5
  play :g4
  play :g5
  sleep 1
  play :f4
  play :f5
  sleep 0.5
  play :d4
  play :d5
  sleep 0.5
  play :f3
  play :f4
  sleep 0.5
  play :g3
  play :g4
  sleep 1
  play :g2
  play :g3
  sleep 0.5
  play :f2
  play :f3
  sleep 0.5
  play :g2
  play :g3
  sleep 0.5
  play :g3
  play :g4
  sleep 1
  play :g2
  sleep 1
  play :g3
  sleep 1
  play :b3
  sleep 0.5
  play :f3
  sleep 0.5
  play :g3
  sleep 0.5
  play :g4
  play :g5
  sleep 0.5
  play :f4
  play :f5
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  play :c3
  sleep 0.5
  play :g2
  sleep 3
  play :g3
  sleep 0.5
  play :g3
  sleep 0.5
  play :f3
  sleep 0.5
end
define :measure8n10 do
  play :g2, sustain: 6
  sleep 2
  play :b3, sustain: 6
  sleep 2
  play :ds2, sustain: 6
  sleep 2
  play :g3, sustain: 6
  sleep 2
end
define :measure9 do
  play :g6
  play :b6
  sleep 0.25
  play :f6
  play :a6
  sleep 0.25
  play :e6
  sleep 0.25
  play :g6
  sleep 0.25
  play :d6
  sleep 0.25
  play :f6
  sleep 0.25
  play :c6
  play :e6
  sleep 0.25
  play :b5
  sleep 0.25
  play :d6
  sleep 0.25
  play :a5
  sleep 0.25
  play :c6
  sleep 0.25
end
define :measure11 do
  play :g2, sustain: 6
  sleep 3
  play :g2
  sleep 0.5
  play :f2
  sleep 0.5
  play :e2
  sleep 0.5
  play :c2
  sleep 0.5
  play :d2
end

live_loop :beat do
  sleep 50
  15.times do
    sleep 1
    sample :drum_bass_soft, amp: 0.5
    beatdos :a5,:a4
  end
  stop
end

live_loop :beat4 do
  sleep 50
  20.times do
    sleep 0.5
    beatdos :a5,:a4
  end
  stop
end

sample intro
sleep 18

measure2
measure1n3
measure2
measure1n3
measure4
measure5
measure6
measure7
measure8n10
measure9
measure8n10
measure11

sleep 2
sample ending
