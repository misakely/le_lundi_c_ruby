y = 0

for x in 1...1000 do
	if x % 3 == 0 || x % 5 == 0
		y = y + x
	end
end

puts y
