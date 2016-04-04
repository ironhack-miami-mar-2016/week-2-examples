class StringCalculator
  def add(numbers_string)
    numbers = numbers_string.split(",")

    numbers.reduce(0) do |sum, the_number_str|
      sum + the_number_str.to_i
    end
  end
end
