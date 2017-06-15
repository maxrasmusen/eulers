require "prime"
class LargestPrimeFactor

	def prime? n 
		Prime.prime? n
	end

	def getPrimeFactors n
		Prime.prime_division(n).map {|elem| elem[0]}
	end

	def getLPF n
		getPrimeFactors(n).max
	end

end

lpf = LargestPrimeFactor.new
puts lpf.getLPF 600851475143