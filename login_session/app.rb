require "sinatra"
require "sinatra/reloader" if development?

enable :sessions

get "/" do
  erb :home
end

get "/login" do
  erb :login
end


creds = {
  "nizar" => "swordfish",
  "alvaro" => "alvaro123",
  "sarah" => "chile123",
  "carlos" => "ccardo"
}

# <form action="/authenticate" method="post">
post "/authenticate" do
  username_input = params[:username]
  password_input = params[:userpassword]

  # if the username_input doesn't exist this will be nil
  correct_password = creds[username_input]

  if correct_password.nil?
    puts "Username incorrect!"
    redirect to("/login")
  elsif password_input != correct_password
    puts "Password incorrect!"
    redirect to("/login")
  else
    puts "Success!"

    session[:whatever] = username_input

    redirect to("/profile")
  end
end

get "/profile" do
  @the_name = session[:whatever]

  if @the_name.nil?
    redirect to("/login")
  else
    erb :profile
  end
end

get "/logout" do
  session.clear

  redirect to("/")
end
