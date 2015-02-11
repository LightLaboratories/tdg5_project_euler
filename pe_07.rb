def isPrime(r)
  for i in 3..Math.sqrt(r)
    if r%i == 0 then
      return false
    end
  i+=1
  end
  return true
end
i = 1
y = 3
while i != 10001
  if isPrime(y) ==true
    i+=1
  end
  y+=2
end
puts y-2
