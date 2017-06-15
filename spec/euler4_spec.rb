require_relative 'spec_helper'

describe "Test Sum of Digits Sequence ::   " do 

	it "should be able to sum the digits of a single positive number" do 
		sds = SumOfDigitsSequence.new
		expect(sds.sum_digits 3).to eql (3)
		expect(sds.sum_digits 10).to eql (1)
		expect(sds.sum_digits 1837).to eql(19)
		expect(sds.sum_digits 1037).to eql(11)
	end

	it "should be able to sum the digits of a single negative number" do
		sds = SumOfDigitsSequence.new
		expect(sds.sum_digits -13).to eql(4)
	end

	it "should be able to generate a sequence given a length" do
		sds = SumOfDigitsSequence.new
		expect(sds.sequence 10).to eql([1, 1, 2, 4, 8, 16, 23, 28, 38, 49])
	end

	it "should be able to get the nth number in a sequence" do
		sds = SumOfDigitsSequence.new
		expect(sds.getNthNumber 9).to eql(49)
		expect(sds.getNthNumber 1000000).to eql(31054319)
	end

end