# frozen_string_literal: true

require 'pry'
# class for calculating Ruby strings
class Calculator
  def add(str_num)
    return 0 if str_num.strip.empty?

    raise 'Negative numbers not allowed' if str_num.include?('-')

    formatted_values = format_values(str_num)
    perform_sum(formatted_values)
  end

  private

  def perform_sum(values)
    if values.is_a? String
      values.split(',').reduce(0) { |sum, num| sum + num.to_i }
    else
      values.reduce(0) { |sum, num| sum + num.to_i }
    end
  end

  def handle_new_line(str_num)
    str_num.strip.gsub('\n', ',')
  end

  def handle_delimiters(str_num)
    handle_new_line(str_num)
    str_num.strip.gsub(';', ',')
  end

  def format_values(str_num)
    if str_num.include?('\n') || str_num.include?('//')
      formatted_new_line = handle_new_line(str_num)
      handle_delimiters(formatted_new_line)
    else
      str_num.split(',')
    end
  end
end
