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

post "/named-cat" do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end

get "/cat-form" do
  erb(:cat_form)
end

# Some interesting things have happened as a result of changing our GET request to a POST request.
#
# First of all, the query string on the /named-cat page has disappeared.
# This is because POST requests do not store their query parameters in the request string.
# Instead, they store them in the body of the request as 'Form Data'.
#
# Secondly, the params we print to the console have not changed.
# This is what we expect: although POST sends parameters from clients to servers in a different way to GET,
# it still sends them, and they are interpreted the same way by Sinatra.
