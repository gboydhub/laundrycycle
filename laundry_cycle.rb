def wear(smellcounter)
  sample :elec_fuzz_tom, amp:10, rate: smellcounter
  sleep 0.8
end

def wash(temp)
  play temp, amp:3
  sleep 0.9
end

def dry(smpl)
  sample smpl, amp:12
  sleep 0.5
end

smellcounter = 1
5.times do
  wear(smellcounter)
  wash(70 + (smellcounter*5))
  dry(:ambi_soft_buzz)
  
  smellcounter += 1
end