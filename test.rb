def score(dice)
     sum = 0
     rolls = dice.inject(Hash.new(0)) { |result, element| result[element] += 1; result; }
	 rolls.each do |key, value|
	    weight = if value == 1 then 10 else key end
		
		if value >= 3
		   sum += weight * 100
		   value -= 3
		end 
		
		if value > 0 and key == 1 or key == 5
		   sum += key * weight * 10
		end
		
	 end
end


sum = score([])