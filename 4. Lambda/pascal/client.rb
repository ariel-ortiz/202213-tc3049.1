require 'json'
require 'faraday'

URL = 'https://2a5n5m6d57rlh7mwr6o5fseola0llrol.lambda-url.us-east-1.on.aws/'

connection = Faraday.new(url: URL)
res = connection.get do |req|
    req.params['n'] = 5
end

if res.success?
    data = JSON.parse(res.body)
    p data['result']
end