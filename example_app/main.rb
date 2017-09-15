require 'sinatra'
require 'json'

# this app is a black box!

get '/comments' do
  content_type :json
  response = [
    { text: "I love Ruby China!", user: "Daniel" },
    { text: "<script>alert('1337');</script>", user: "Magneto" },
  ]
  response.to_json
end

get '/' do
  content_type :json
  response = {
    title: "2017 Ruby conf China",
    body: "Nihao!"
  }
  response.to_json
end
