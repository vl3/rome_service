Rails.application.routes.draw do
  get 'roman_numerals/convert_decimal', defaults: {format: :json}
  get 'roman_numerals/convert_roman', defaults: {format: :json}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
