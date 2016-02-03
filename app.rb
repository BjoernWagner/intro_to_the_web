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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end

get '/naming-cat' do
  erb(:cat_form)
end
