require 'sinatra'
require 'json'
require 'faraday'

URL = 'https://7fugtltkyefn3rb4botst5pieu0ydcgj.lambda-url.us-east-1.on.aws/books'

get '/' do
  response = Faraday.get(URL)
  @info = []
  if response.success?
    @info = JSON.parse(response.body)
  end
  erb :books
end
