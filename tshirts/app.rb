require "sinatra"
require "sinatra/reloader"

require_relative "lib/tshirt.rb"

enable :sessions

get "/" do
  @tshirts = [
    Tshirt.new("Darth Vader Shirt", "http://ecx.images-amazon.com/images/I/61MIT09A%2BpL._UX385_.jpg"),
    Tshirt.new("Batman Shirt", "http://scene7.targetimg1.com/is/image/Target/13966192?wid=480&hei=480"),
    Tshirt.new("Superman Shirt", "https://underarmour.scene7.com/is/image/Underarmour/V5-1249770-400_HTF?scl=1&fmt=jpg&qlt=80&wid=507&hei=666&size=1080,1419&extend=0,426,0,0&cache=on,off&resMode=sharp2"),
    Tshirt.new("Peter Griffin Shirt", "http://cdn.images.express.co.uk/img/dynamic/78/590x/Real-Life-Peter-Griffin-Comic-Con-Video-552923.jpg")
  ]

  erb :tshirts
end
