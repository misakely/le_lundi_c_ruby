def chiffre_de_cesar(string, offset)
	tab = string.split('')
	tab = tab.collect {|x|
		if (x.ord >= 65 && x.ord <= 90) 
			if x.ord + offset > 90
				x =  ((x.ord + offset - 65) % 26 + 65).chr
			else
				x = (x.ord + offset).chr
			end		  
		elsif (x.ord >= 97 && x.ord <= 122)
			if x.ord + offset > 122
				x = ((x.ord + offset - 97) % 26 + 97).chr
			else
				x = (x.ord + offset).chr
			end
		else
			x
		end
			  }
	str = tab.join("")	
end

puts chiffre_de_cesar("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1245494589485/./\]'", 5)
puts chiffre_de_cesar("What a string!", 5)
