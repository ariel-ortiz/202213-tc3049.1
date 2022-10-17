require "json"
require "faraday"

URL = 'https://7fugtltkyefn3rb4botst5pieu0ydcgj.lambda-url.us-east-1.on.aws/books'

data = {
  Author: "Suzanne Collins",
  Title: "Mockingjay",
  Year: 2010,
  Note: 'End of the trilogy'
}

res = Faraday.post(URL, JSON.dump(data), content_type: 'application/json')

if res.success?
  puts "Status: #{res.status}. Resource created!"
end

res = Faraday.get(URL)

if res.success?
  data = JSON.parse(res.body)
  p data
end
