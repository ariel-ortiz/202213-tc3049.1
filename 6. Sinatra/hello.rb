require 'sinatra'

get '/hello/:name?' do
  name = params['name'] || 'mundo'
  "¡Hola, <strong>#{name}</strong>!"
end

get '/pow2/:n' do
  n = params['n'].to_i
  @potencias = (0..n).map {|x| 2 ** x}
  erb :pow2
end
