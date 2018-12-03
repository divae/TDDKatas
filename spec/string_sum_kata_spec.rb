require 'stringSum'

describe 'factory of strings' do

    let(:stringSum){ StringSum.new }

    it 'sum two natural numbers' do
        #arrange
        firstString = '1'
        secondString = '2'
        #act
        result = stringSum.sum(firstString,secondString)
        #assert
        expect(result).to eq(3)
    end
    it 'convert in 0 if no is natural number' do
         #arrange
         firstString = '1'
         secondString = 'a'
         #act
         result = stringSum.sum(firstString,secondString)
         #assert
         expect(result).to eq(1)
    end
end

