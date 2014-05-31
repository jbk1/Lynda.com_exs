# =========================
# Return method playing

def longest_word(words=[])
	longest_word = words.inject do |memo, word|
		memo.length > word.length ? memo : word
	end
	return longest_word
end

def over_five?(value=nil)
	return "Exactly 5" if value.to_i == 5
	if value.to_i > 5
		return "Over 5"
	else
		return "Under 5"
	end

end

def add_and_subtract(n1=0, n2=0)
	add = n1 + n2
	sub = n1 - n2
	return [add, sub]
end

@array1 = ['one', 'four', 'three', 'eleven']

result = add_and_subtract(2, 4)
puts result [0]
puts "and now for the subtract result"
puts result [1]
puts 'and now for double assignment'
add, sub = add_and_subtract(8, 3)
puts add
puts sub

# =============================
