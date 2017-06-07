def roman_numeral_converter(input)
  number_string = input.to_s 
  
  singles = number_string[-1].to_i
  tens = number_string[-2].to_i
  hundreds = number_string[-3].to_i
  thousands = input/1000
  
  roman_numeral_output = 'M' * thousands
  roman_numeral_output << case_check(hundreds, 'M', 'D', 'C')
  roman_numeral_output << case_check(tens, 'C', 'L', 'X')
  roman_numeral_output << case_check(singles, 'X', 'V', 'I')
end

def case_check(input_integer, top_letter, middle_letter, bottom_letter)
  case input_integer
  when 9
    bottom_letter + top_letter
  when 8,7,6,5
    remainder = input_integer % 5
    middle_letter + bottom_letter * remainder
  when 4
    bottom_letter + middle_letter
  else
    bottom_letter * input_integer
  end
end

roman_numeral_converter(999)
