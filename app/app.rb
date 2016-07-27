require "sinatra/base"
require "models/link"

class BookMarkManager < Sinatra::Base

get '/links' do

  erb :links
end





  run! if app_file == $0
end
