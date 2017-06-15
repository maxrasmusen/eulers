require_relative 'spec_helper'

describe Fibonacci do
	
	it "should return the next number in the sequence" do
		fib = Fibonacci.new
		expect(fib.nextNumber 1, 2).to eql(3)
		expect(fib.nextNumber 2, 3).to eql(5)
	end

	it "should generate a list of n Fibonacci numbers" do
		fib = Fibonacci.new
		expect(fib.listNumbers 15).to eql([1, 2, 3, 5, 8, 13])
		expect((fib.listNumbers 99923460248141).last).to eql(72723460248141)
	end

	it "should tell if a number is even" do
		fib = Fibonacci.new
		expect(fib.even? 2).to eql(true)
		expect(fib.even? 5).to eql(false)
	end

	it "should sum numbers" do
		fib = Fibonacci.new
		expect(fib.sumNumbers 100).to eq(44)
	end

	it "should error if limit is <= 2" do 
		fib = Fibonacci.new
		expect{fib.sumNumbers -1}.to raise_error(ArgumentError, "Must give sumNumbers a number greater than 2")
	end	

end