require "sinatra"

require_relative "lib/calculator.rb"
require_relative "lib/memory_saver.rb"

my_calculator = Calculator.new
my_memory = MemorySaver.new


get "/" do
  @memory_number = my_memory.load
  erb :home
end

# <form action="/calculate" method="post">

post "/calculate" do
  # <input type="number" name="first_number">
  first = params[:first_number].to_i

  # <input type="number" name="second_number">
  second = params[:second_number].to_i

  @result = my_calculator.add(first, second)

  erb :results
end


# <form action="/save_to_memory" method="post">

post "/save_to_memory" do

  # <input type="hidden" name="result" value="<%= @result %>">

  my_memory.save(params[:result])

  redirect to("/")
end

