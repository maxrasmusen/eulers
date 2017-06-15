class Euler1

	def getSum num
		raise ArgumentError, "getSum requires a positive number" if num < 0
		1.upto(num-1).inject(0) {|s, n| (threeOrFive? n) ? s + n : s}
	end

	def three? num
		return num % 3 == 0
	end

	def five? num
		return num % 5 == 0
	end

	def threeOrFive? num
		three? num or five? num
	end

end