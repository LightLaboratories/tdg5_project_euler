total=0
334.times { |i| total+=i*3}
for i in 1..199
if (i*5)%3!=0
  total+=(i*5)
end
end
puts "#{total}"