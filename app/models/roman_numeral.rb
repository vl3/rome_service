class RomanNumeral
  attr_reader :numeral
  attr_reader :decimal
  attr_reader :error

  def initialize num_or_numeral
    begin
      converted_num_or_numeral = RomeConversor.parse num_or_numeral
      if converted_num_or_numeral.is_a? String
        @numeral = converted_num_or_numeral
        @decimal = num_or_numeral
      else
        @decimal = converted_num_or_numeral
        @numeral = num_or_numeral
      end
    rescue Exception => e
      @error = e.message
    end
  end
end
