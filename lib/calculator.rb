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