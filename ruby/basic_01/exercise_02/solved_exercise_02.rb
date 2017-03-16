class Calculator
    MSG_DIVIDED_BY_ZERO = 'You cannot divide by zero!'.freeze

    def sum(num1, num2)
        num1 + num2
    end

    def subtract(num1, num2)
        num1 - num2
    end

    def multiply(num1, num2)
        num1 * num2
    end

    def divide_if(num1, num2)
        return MSG_DIVIDED_BY_ZERO if num2 == 0
        num1 / num2
    end

    def divide_exception(num1, num2)
        num1 / num2
    rescue ZeroDivisionError
        return MSG_DIVIDED_BY_ZERO
    end
end
