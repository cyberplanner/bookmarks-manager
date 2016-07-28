ENV['RACK_ENV'] ||= 'development'

require "sinatra/base"
require_relative "./models/data_mapper_setup"

class BookMarkManager < Sinatra::Base

get '/links/new' do
  erb :new
end

post '/links' do
  link = Link.create(title: params[:title], url: params[:url])
  params[:tag].split(", ").each do | tag |
    tag = Tag.create(name: tag )
    link.tags << tag
    link.save
  end

  redirect '/links'
end

get '/links' do
  @links = Link.all
  erb :links
end

get '/tags/:tag' do
  @links = Link.all('tags.name' => params[:tag] )
  erb :links
end



  run! if app_file == $0
end
