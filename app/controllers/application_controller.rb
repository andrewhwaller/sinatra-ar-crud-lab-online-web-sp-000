
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
#new
  get '/articles/new' do
    @article = Article.new
    erb :new
  end
  
 #create
  post '/articles' do
    Article.new.save
    erb :index
  end
  
#show
  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :show
  end
  
#index
  get '/articles' do
    @articles = Article.all
    erb :index
  end
end
