require 'sinatra'


get '/' do
  erb :index
end

get '/users/new' do
end

post '/users' do
end

get '/admin/permits' do
  erb :'admin/permits'
end

get '/:park_name' do
  erb :park, locals: { :park_name => params[:park_name]}
end

post '/:park_name/register' do
  permit_info = params[:permit]

  hiker_name = permit_info[:hiker_name]
  hiker_phone = permit_info[:hiker_phone]
  park_name = permit_info[:park_name]

  redirect "/"
end