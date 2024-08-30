# frozen_string_literal: true

require 'pry'
# class for calculating Ruby strings
class Calculator
  def add(str_num)
    return 0 if str_num.strip.empty?

    raise 'negative numbers not allowed' if str_num.include?('-')

    perform_sum(format_values(str_num))
  end

  private

  def perform_sum(values)
    values.reduce(0) { |sum, num| sum + num.to_i }
  end

  def format_values(str_num)
    str_num.strip.gsub(/[^\d]/, ',').split(',')
  end
end
