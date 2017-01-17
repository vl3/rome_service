require 'test_helper'

class RomanNumeralTest < ActiveSupport::TestCase
  def setup
    @roman_to_dec = RomanNumeral.new("mdxiiii")
    @dec_to_roman = RomanNumeral.new(1514)
  end

  test "correct_convertion_of_numeral" do
    assert_equal 1514, @roman_to_dec.decimal
    assert_equal "mdxiiii", @roman_to_dec.numeral

    assert_equal "mdxiiii", @dec_to_roman.numeral
    assert_equal 1514, @dec_to_roman.decimal
  end

  test "must_set_error_message_on_invalid_input" do
    assert_not_nil RomanNumeral.new("axii").error
  end
end
