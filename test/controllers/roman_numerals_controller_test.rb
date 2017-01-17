require 'test_helper'

class RomanNumeralsControllerTest < ActionDispatch::IntegrationTest
  test "should return a json with decimal and roman from decimal input" do
    get(roman_numerals_convert_decimal_url(decimal: 123), as: :json)
    assert_response :success
    assert_equal({ "decimal" => 123, "numeral" => "cxxiii", "error" => nil }, response.parsed_body)
  end

  test "should return a json with decimal and roman from rome numeral input" do
    get(roman_numerals_convert_roman_url(numeral: "cxxiii"), as: :json)
    assert_response :success
    assert_equal({ "decimal" => 123, "numeral" => "cxxiii", "error" => nil }, response.parsed_body)
  end

  test "should return a json with error when passed invalid input" do
    get(roman_numerals_convert_roman_url(numeral: "acxxiii"), as: :json)
    assert_response :unprocessable_entity
  end
end
