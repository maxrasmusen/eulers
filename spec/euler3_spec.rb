require_relative 'spec_helper'

describe LargestPrimeFactor do 

	it "should be able to tell if a number is prime" do
		lpf = LargestPrimeFactor.new
		expect(lpf.prime? 11).to eql(true)
		expect(lpf.prime? 12).to eql(false)
		expect(lpf.prime? 2).to eql(true)
	end

	it "should be able to get the prime factors of a number" do
		lpf = LargestPrimeFactor.new
		expect(lpf.getPrimeFactors 13195).to eql([5, 7, 13, 29])
	end

	it "should be able to get the maximum of an array of numbers" do
		lpf = LargestPrimeFactor.new
		expect(lpf.getLPF 13195).to eql(29)
	end

end	
