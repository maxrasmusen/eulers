class Fibonacci 

	def nextNumber n1, n2
		n1 + n2
	end

	def listNumbers lim 
		results = [1, 2]
		n = nextNumber results[results.length-1], results[results.length-2]
		while n <= lim
			results.push(n)
			n = nextNumber results[results.length-1], results[results.length-2]
		end
		results
	end

	def sumNumbers lim 
		raise ArgumentError, "Must give sumNumbers a number greater than 2" if lim <= 2
		nums = listNumbers lim
		nums.inject(0){|sum, n| (even? n) ? sum + n : sum}
	end

	def even? n
		n % 2 == 0
	end

end