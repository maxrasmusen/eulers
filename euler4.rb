class SumOfDigitsSequence

	def sum_digits n 
		n = n.abs
		sum = 0
		while n != 0
			sum += n % 10
			n = n/10
		end
		sum
	end

	def sequence n
		results = [1, 1]
		(n-2).times do
			results.push(results.last + sum_digits(results.last))
		end
		results
	end

	def getNthNumber n
		seq = sequence n+1
		seq.last
	end
end

SumOfDigitsSequence.new.getNthNumber(1000000000000000)