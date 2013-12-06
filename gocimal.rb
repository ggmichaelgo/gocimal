def get_digits
	['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H',']','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
end

def to_dec number
	digits = get_digits
	dec = 0
	digit_list = number.to_s.split("")
	digit_index = 0
	while digit_list.length > 0
		d = digit_list.pop
		digit_value = digits.index(d)
		digit_value *= (digits.length * digit_index) if digit_index > 0
		dec += digit_value
		digit_index += 1
	end
	return dec
end


def to_gocimal number
	digits = get_digits
	decimal = number.to_i
	go = ""
	while decimal > 0
		x = decimal % digits.length
		go += digits[x]
		decimal /= digits.length
	end
	return go.reverse!
end

puts to_dec '10'
puts to_gocimal '255'