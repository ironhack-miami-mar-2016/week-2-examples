require "sinatra"

get "/" do
  erb :home
end

get "/about" do
  erb :about
end

get "/pizza" do
  @ingredients = [ "pepperonni", "green peppers", "mushrooms" ]
  erb :pizza
end
