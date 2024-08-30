# frozen_string_literal: true

# class for calculating Ruby strings
class Calculator
  def add(str_num)
    return 0 if str_num.strip.empty?

    formatted_values = handle_new_line(str_num)
    values = handle_multiple_values(formatted_values)
    perform_sum(values)
  end

  private

  def handle_multiple_values(str_num)
    str_num.split(',')
  end

  def perform_sum(values)
    values.reduce(0) { |sum, num| sum + num.to_i }
  end

  def handle_new_line(str_num)
    str_num.strip.gsub('\n', ',')
  end
end
