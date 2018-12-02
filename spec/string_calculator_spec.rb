class Calculator
  
    def Add (numbers)
        return 0 if (numbers == "") 

        delimiter(numbers)

        normalize_delimiter(numbers)

        pass_strings_to_array_integers(numbers) 

        validate_number()

        sum()

        
    
    end

    private

    def validate_number()
        negatives()
        raise("Negatives don't have permission") if @negativeNumbers.size > 0
    end
    
    def delimiter(numbers)
        @delimiter = ','
        if numbers[0][/[A-Fa-f0-9]/].nil?
            @delimiter = numbers[0]
        end
    end

    def normalize_delimiter(values)
        values.gsub!("\\n", @delimiter)
    end

    def pass_strings_to_array_integers (values)
        @numbers = values.split(@delimiter).map{ |number| number.to_i };
    end

    def sum
        return 0 if @numbers.size < 2
        @numbers.inject { |sum, number| sum + number } 
    end

    def negatives
        @negativeNumbers = @numbers.select{|number| number < 0 }
    end
    
end

describe Calculator do

    let(:calculator) {  Calculator.new }

    it 'min thwo numbers' do
        number = '4'

        result = calculator.Add(number)

        expect(result).to eq(0) 
    end  

    it 'for an empty string the method will return 0' do
        number = ''

        result = calculator.Add(number)

        expect(result).to eq(0) 
    end

    it 'discard void or non natural number' do
        number = 'a,2,4'

        result = calculator.Add(number)

        expect(result).to eq(6) 
    end    



    it 'allow the add method to handle an unknown amount of numbers' do
        number = '1,2,4,9'

        result = calculator.Add(number)

        expect(result).to eq(16) 
    end

    it 'allow the add method to handle new lines between numbers (instead of commas).' do
        number = '1\n2,3'

        result = calculator.Add(number)

        expect(result).to eq(6) 
    end

    it 'support different delimiters' do
        number = ';\n1;2'

        result = calculator.Add(number)

        expect(result).to eq(3) 
    end

    it 'is negative show expeption' do
        number = '1,5,-3'

        expect{calculator.Add(number)}.to raise_error(StandardError, /Negatives don't have permission/)
    end

end
