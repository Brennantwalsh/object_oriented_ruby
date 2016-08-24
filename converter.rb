input = File.open('weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map(&:split)
var1 = array[0]
var2 = array[2]


hash = Hash[var1.zip var2]
p hash

32.times do 
  x = 3
  varx = array[x]
  x = x +1
  hash << varx
end
