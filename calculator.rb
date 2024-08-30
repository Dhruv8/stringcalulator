# frozen_string_literal: true

# class for calculating Ruby strings
class Calculator
  def add(str_num)
    return 0 if str_num.strip.empty?

    values = handle_multiple_values(str_num)
    perform_sum(values)
  end

  private

  def handle_multiple_values(str_num)
    str_num.split(',')
  end

  def perform_sum(values)
    values.reduce(0) { |sum, num| sum + num.to_i }
  end
end
