def trader_du_dimanche()
	puts "Entrez chaque valeur séparée par une virgule:"
	array = gets.chomp
	array = array.split(",")
	best, ibest, jbest = 0;
	for i in 0...(array.length) do
		for j in i+1...array.length
			if best < (array[j].to_i - array[i].to_i)
				best = (array[j].to_i - array[i].to_i)
				ibest = i
				jbest = j
			end
		end
	end
	puts "=> [#{ibest},#{jbest}] # $#{array[jbest].to_i} - $#{array[ibest].to_i} = $#{best}"
end

trader_du_dimanche()
