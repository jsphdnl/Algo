
#Intput an arra of numbers with space
sray = gets.split(" ").map{|x| x.to_i}

def swap(a, b, sray)
  temp = sray[a]
  sray[a] = sray[b]
  sray[b] = temp
end

def minElementIndex(i, j, array)
  minI = i;
  for x in i+1..j
   if(array[x] < array[minI])
    minI = x
   end
  end
  return minI 
end

for i in 0...sray.size
 minI = minElementIndex(i, sray.size-1, sray)
 swap(i, minI, sray) 
end

print "#{sray}"
