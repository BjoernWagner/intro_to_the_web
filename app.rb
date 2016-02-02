require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret String"
end

get '/shotgun' do
  "Shoot"
end

get '/cat' do
  erb(:index)
end
