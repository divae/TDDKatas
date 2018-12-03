class FizzBuzz

    def initialize
        @numbers = ('1'..'100').to_a
    end

    def supplied_number(number)
        @number = number
    end
    
    def show
        @numbers
    end

    def inRange?(number)
        @numbers.include?(number)
    end

    def play(number)

        supplied_number(number)

        if multiple?(FIZZ_NUMBER) && multiple?(BUZZ_NUMBER)
            return "FizzBuzz"            
        elsif multiple?(FIZZ_NUMBER)
            return "Fizz"
        elsif multiple?(BUZZ_NUMBER)
            return "Buzz"
        end

    end

    private

    def multiple?(value)
        return true if (@number % value) == CERO_NUMBER
    end

end