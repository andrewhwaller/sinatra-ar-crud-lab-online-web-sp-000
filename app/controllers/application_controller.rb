
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    Article.new.save
    erb :index
  end

  get '/articles/:id' do
    erb :show
  end

  get '/articles' do
    erb :index
  end

  get '/articles' do

  end

end
