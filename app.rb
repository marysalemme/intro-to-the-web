require 'sinatra'
require 'shotgun'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Secret message'
end

get '/random-cat' do
  @name = ["Amigo", "Dude", "God"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat)
end

post '/named-cat' do
  @name = params[:name]
  p params
  erb(:index)
end
