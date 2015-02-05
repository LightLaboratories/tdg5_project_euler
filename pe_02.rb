total=0
lass =1
noow=2
while lass <4000000
if noow%2==0
  total+=noow
end
noow+=lass
lass-=noow
lass=lass.abs
end
puts "#{total}"
