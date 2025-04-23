#Terraria RE-MIX Daytime!!!!!

use_bpm 140
use_synth :piano

Intro = "C:/Users/David_Diaz/Downloads/Terraria Music - Day.wav"

Ending = "C:/Users/David_Diaz/Downloads/terraria-coins.mp3"

ampv = 0

live_loop :bgbeat1 do
  sleep 16.5
  75.times do
    sleep 1
    sample :drum_bass_soft, amp: ampv
    ampv = ampv + 0.01
  end
  stop
end

beats = [:drum_bass_soft] * 6
sleep = [1] * 6
i = 0

live_loop :bgbeat2 do
  sleep 63
  6.times do
    sample(beats[i], amp: 0.5)
    sleep(sleep[i])
    i = i + 1
  end
  stop
end

define :beatdos do |note1, note2, amp_val|
  play note1, amp: amp_val
  sleep 1
  play note2, amp: amp_val
end

live_loop :beat3 do
  sleep 50
  40.times do |i|
    sleep 0.5
    amp_value = 0.5 * ((40 - i) / 40.0)
    beatdos :a5, :a4, amp_value
  end
  stop
end

sample Intro
sleep 16.5
sample Ending, amp: 0.5

define :play_measure do |notes|
  notes.each do |n|
    play n
    sleep 0.5
  end
end

# Measure 1
play_measure [[:g2, :g5], :g3, :fs5, [:b4, :g2], :g3, :b4, [:c5, :g2], [:e5, :g3]]

# Measure 2
play_measure [[:d5, :g2], :g3, :g4, :g3, :g4, [:d5, :g2], [:g5, :g3]]

# Measure 3
play_measure [[:a5, :g2], :g3, :b5, :g2, :g3, [:g2, :a3], :d4, [:g3, :g4]]

# Measure 4
play_measure [[:g2, :d4, :g4, :b4], :g3, [:g2, :e4, :g4, :c5], :g3, :g2, :g3]

# Measure 5
play_measure [[:fs2, :g5], :g3, :fs5, [:b4, :g2], :g3, :b4, [:c5, :g2], [:e5, :g3]]

# Measure 6
play_measure [[:fs2, :d5], :g3, :g2, :g3, :g2, :g3, [:fs2, :d5], [:g3, :g4]]

# Measure 7
play_measure [:g2, :g3, [:cs4, :a4], [:g2, :e4, :cs5], [:g3, :a4, :e5]]

# Measure 8
play_measure [[:fs2, :g4, :b4], [:a4, :cs5], [:g3, :b4, :d5], :g2, :g3, :g5, :a5, [:g2, :b5], [:g3, :g5]]

# Measure 9
play_measure [[:g2, :d6], :g3, :d4, [:g4, :b5], :b4, :g5, :b5, :d5]

# Measure 10
play_measure [:g5, :d5, :b4, :g4, [:d4, :d5], :b3, [:g3, :b4], :d3]

# Measure 11
play_measure [[:cs4, :a4], :a3, :c4, :c4, :a3, :b3, :c4, :d3]

# Measure 12
play_measure [:a3, :cs4, :d4, :a3, [:e3, :cs4], [:a3, :e4], [:c4, :a4], [:e4, :cs5]]

# Measure 13
play_measure [[:g2, :d4, :b4], :g3, :b3]

# Measure 14
play_measure [:g4, :b3, :d4, :g4, :b4, :g4, :b4, :d5, :b4, :g4]

# Measure 15
play_measure [[:d4, :g5], [:g3, :b4], :g4, [:g2, :g5], :g3, :fs5, [:g2, :b4], :g3, :b4, [:g2, :c5], [:g3, :e5]]

# Measure 16
play_measure [[:g2, :d5], [:g3, :g4], :g3, [:g2, :g4], :g3, :g2, :g3]

# Measure 17
play_measure [[:g2, :g4], [:g3, :g5], :g3, :g2, :g3, :g2, :g3]

# Measure 18
play_measure [:g2, :d3, :g3, :b3, :d4, :g4, [:d4, :d5], :fs5, [:g3, :b5]]

# Measure 19
play_measure [[:g3, :a5], :g4, :d4, :b3, :g3, :cs4, [:a3, :e4], :a4, [:g3, :d5]]

# Measure 20
play_measure [[:g2, :cs5], :a3, :cs5, [:g3, :a4], [:a3, :e4], :cs4, :g3, [:a3]]

sample Ending, amp: 1
