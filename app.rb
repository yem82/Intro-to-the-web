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
  "<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end
