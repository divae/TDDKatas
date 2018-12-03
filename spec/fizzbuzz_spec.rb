require 'fizzbuzz'

FIZZ_NUMBER = 3
BUZZ_NUMBER = 5
CERO_NUMBER = 0

describe 'fizzBuzz' do

    let(:fizzBuzz){ FizzBuzz.new}

    it 'print numbers from 1 to 100' do
        expect(fizzBuzz.show()).to eq(('1'..'100').to_a)
    end

    it 'print "Fizz" instead of number which is divisible by 3' do
        number = 3
        expect(fizzBuzz.play(number)).to eq("Fizz")
    end 

    it 'print "Buzz" instead of number which is divisible by 5' do
        number = 5
        expect(fizzBuzz.play(number)).to eq("Buzz")
    end 

    it 'print "FizzBuzz" instead of number which is divisible by both and 5' do
        number = 15
        expect(fizzBuzz.play(number)).to eq("FizzBuzz")
    end

    it 'verify supplied number within the range 1 to 100' do
        number = '4'
        result = fizzBuzz.inRange?(number)
        expect(result).to eq(true)
    end
end