def cel2far(cel)
  result = cel.to_f * 1.8 + 32
  puts result.round 2
end

def far2cel(far)
  result = (far.to_f - 32) / 1.8
  puts result.round 2
end

cel2far 37

far2cel 98