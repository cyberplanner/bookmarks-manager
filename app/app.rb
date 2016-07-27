require "sinatra/base"
require_relative "models/link"

class BookMarkManager < Sinatra::Base

get '/links/new' do
  erb :new
end

post '/links' do
  Link.create(title: params[:title], url: params[:url])
  redirect '/links'
end

get '/links' do
  @links = Link.all
  erb :links
end



  run! if app_file == $0
end
