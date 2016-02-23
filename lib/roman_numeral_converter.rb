require "roman_numeral_converter/version"

module RomanNumeralConverter
  class Converter
    def convert(n)
      result = ''

      while n >= 10
        result << 'X'
        n -= 10
      end

      while n >= 9
        result << 'IX'
        n -= 9
      end

      while n >= 5
        result << 'V'
        n -= 5
      end

      while n >= 4
        result << 'IV'
        n -= 4
      end

      result << 'I' * n
    end
  end
end
