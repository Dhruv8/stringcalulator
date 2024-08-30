# frozen_string_literal: true

# class for calculating Ruby strings
class Calculator
  def add(str_num)
    return 0 if str_num.strip.empty?

    convert_to_number(str_num)
  end

  private

  def convert_to_number(str_num)
    str_num.to_i
  end
end
