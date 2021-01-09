def fibs(n)
  result = 0
  prev = 1
  n.times do
    new_result = result + prev
    prev = result
    result = new_result
  end
  result
end

def fibs_rec(n)
  return n if (-1..1).include?(n)

  n.positive? ? fibs_rec(n - 2) + fibs_rec(n - 1) : fibs_rec(n + 2) + fibs_rec(n + 1)
end
