input = File.open('weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map(&:split)

x = 3
temp_difference_day = 0
min_temp_difference = 10000
30.times do
var1 = array[0]
var2 = array[x]

hash = Hash[var1.zip var2]

if hash["MxT"].to_i - hash["MnT"].to_i < min_temp_difference
  temp_difference_day = hash["Dy"]
  min_temp_difference = hash["MxT"].to_i - hash["MnT"].to_i
end
x = x + 1
end
puts min_temp_difference
puts temp_difference_day



