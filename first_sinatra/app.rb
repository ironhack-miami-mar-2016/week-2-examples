require "sinatra"
require "sinatra/reloader"

enable :sessions


get "/" do
  @session_info = session.inspect
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

get "/no_reloading" do
  "NO RELOADS REQUIRED!!"
end

get "/tea_time" do
  status 418
  "Welcome to tea time! I'm a tea pot."
end

get "/session_test/:text" do
  text = params[:text]

  if session[:saved_stuff].nil?
    session[:saved_stuff] = []
  end

  session[:saved_stuff].push(text)

  redirect to("/")
end
