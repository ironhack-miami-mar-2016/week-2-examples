require "sinatra"

get "/" do
  erb :home
end

get "/about" do
  erb :about
end

get "/current_time" do
  @t = Time.now
  erb :current_time
end

get "/pizza" do
  @ingredients = [ "pepperonni", "green peppers", "mushrooms" ]
  erb :pizza
end
