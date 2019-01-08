def fibs(n)
  result = [0]
  1.upto(n) do |i|
    (i == 1) ? result << i : result << result[i-1] + result[i-2]
  end
  result
end

def fibs_rec(n, result = [0, 1])
  return result[n] if result[n]
  result[n] = fibs_rec(n - 1, result) + fibs_rec(n - 2, result)
end

p fibs(20)
p fibs_rec(20)
