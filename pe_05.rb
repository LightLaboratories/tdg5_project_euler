#while 
  def isPrime(r)
  for i in 2..Math.sqrt(r)
    if r%i == 0 then
      return false
    end
  i+=1
  end
  return true
end

  print "Enter the Upper Bound: "
  STDOUT.flush  
  o = gets
  start = Time.now
  o=o.to_i
  @t= Array.new(o,0)
  @a= Array.new(o,0)
   
   for rr in 1..o
  @a[rr]=0
  end
  
  for ii in 1..o
    for rr in 1..o
      @t[rr]=0
    end
    n=ii
  
    while isPrime(n)==false
      for i in 2..n/2
        if isPrime(i)==true 
          if n%i == 0 
            @t[i]+=1
            n=(n/i)
            break
          end
        end
      end
    end
  @t[n]+=1
  
  for y in 1..o
    if @t[y] >@a[y]
      @a[y]=@t[y]
    end
  end
  
end

ty=1
for z in 1..o
if @a[z] !=0 then
ty=ty*(z**@a[z])
end
end
puts ty
puts "#{Time.now - start}"
#for i in 1..o
#puts @a[i]
#end