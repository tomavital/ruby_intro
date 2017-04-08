class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    the_number = rand(3)

    if the_number < 1
      @your_output = "Rock"
    elsif the_number > 1
      @your_output = "Paper"
    else
      @your_output = "Scissors"
    end


    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array

    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    good_numbers = []            # Create an empty array

    numbers.each do |num|
      if num%3 == 0 || num%5 == 0
        good = num
      good_numbers.push(good)  # Push it into the squared_numbers array
    end
    # Your code goes below.

    @your_output = good_numbers
end
    render("programs/third_program.html.erb")
  end
end
