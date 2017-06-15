require_relative 'spec_helper'

describe "multiples of 3 and 5 tests:  " do 

	it "should recognize multiples of three" do
		mul = Euler1.new
		expect(mul.three? 3).to eql(true)
		expect(mul.three? 5).to eql(false)
	end

	it "should recognize multiples of five" do
		mul = Euler1.new
		expect(mul.five? 3).to eql(false)
		expect(mul.five? 5).to eql(true)
	end

	it "should recognize multiples of three or five" do
		mul = Euler1.new
		expect(mul.threeOrFive? 4).to eql(false)
		expect(mul.threeOrFive? 12).to eql(true)
		expect(mul.threeOrFive? 10).to eql(true)
	end

	it "should return the sum of all numbers divisible by three or five" do
		mul = Euler1.new
		expect(mul.getSum 5).to eql(3)
		expect(mul.getSum 10).to eql(23)
		expect(mul.getSum 11).to eql(33)
	end

	it "should return an error if a negative value is passed" do
		mul = Euler1.new
		expect{mul.getSum -10}.to raise_error(ArgumentError, "getSum requires a positive number")
	end

	it "should return an integer" do
		mul = Euler1.new
		expect(mul.getSum 10).to be_a(Integer)
	end

	it "should work on large numbers" do
		skip
		mul = Euler1.new
		expect(mul.getSum 100000000).to be_a(Integer)
	end
end