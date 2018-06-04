def boot_pc
  sample :elec_blip
  sleep 0.2
  sample :elec_blip, sustain: 2
  sleep 1
  sample :ambi_swoosh, amp:5
end

def login
  7.times do
    sample :drum_bass_hard, amp: rrand(1, 3)
    sleep rrand(0.05, 0.2)
  end
end

def write_code(len)
  while len > 0
    sample :drum_bass_hard, amp: rrand(1, 3)
    sleep rrand(0.05, 0.2)
    len -= 1 #comment
  end
end

def logout
  sample :ambi_swoosh, rate:-1, amp: 5
end

boot_pc
sleep 3
login
sleep 2
write_code(30)
sleep 2
logout