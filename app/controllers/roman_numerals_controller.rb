class RomanNumeralsController < ApplicationController
  def convert_decimal
    @roman_numeral = RomanNumeral.new params[:decimal].to_i
    render json: @roman_numeral.error, status: 422 if @roman_numeral.error.present?
  end

  def convert_roman
    @roman_numeral = RomanNumeral.new params[:numeral]
    render json: @roman_numeral.error, status: 422 if @roman_numeral.error.present?
  end
end
