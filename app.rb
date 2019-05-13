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

get "/cat" do
  erb(:index)
end
