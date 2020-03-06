require 'sinatra/base'
enaable :sessions

class Battle < Sinatra::Base
  # get '/' do
  #   'Hello Battle!'
  # end

  get '/testing' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

 post '/names' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    erb :play
    session
  end


end