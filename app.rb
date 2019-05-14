require 'sinatra'

get "/" do
  "Hello"
end

get "/secret" do
  "I love ruby!"
end

get "/donuts" do
  "Those are my favs"
end

get "/random-cat" do
  @name = ["Yemi", "Peter", "Jason"].sample
  erb(:index)
end

get "/named-cat" do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end
