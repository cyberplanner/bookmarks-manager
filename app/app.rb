ENV['RACK_ENV'] ||= 'development'

require "sinatra/base"
require_relative "./models/data_mapper_setup"

class BookMarkManager < Sinatra::Base

get '/links/new' do
  erb :new
end

post '/links' do
  tag = Tag.create(name: params[:tag])
  link = Link.create(title: params[:title], url: params[:url])
  link.tags << tag
  link.save
  redirect '/links'
end

get '/links' do
  @links = Link.all
  erb :links
end

get '/tags/bubbles' do
  @links = Link.all('tags.name' => "bubbles")
  erb :links
end



  run! if app_file == $0
end
