class StringSum
    def self.sum(firstString,secondString)
        (firstString.to_i + secondString.to_i)
    end
end

describe 'factoryStrings' do
    it 'sum two natural numbers' do
        #arrange
        firstString = '1'
        secondString = '2'
        #act
        result = StringSum.sum(firstString,secondString)
        #assert
        expect(result).to eq(3)
    end
    it 'convert in 0 if no is natural number' do
         #arrange
         firstString = '1'
         secondString = 'a'
         #act
         result = StringSum.sum(firstString,secondString)
         #assert
         expect(result).to eq(1)
    end
end

