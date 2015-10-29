require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:enter_name)
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @Player1 = session[:Player1]
    @Player2 = session[:Player2]
    @Player1_HPs = 100
    @Player2_HPs = 100
    erb(:play)
  end

  get '/attack' do
    @Player1 = session[:Player1]
    @Player2 = session[:Player2]
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
