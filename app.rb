require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:enter_name)
  end

  post '/names' do
    $Player1 = Player.new(params[:Player1])
    $Player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @Player1 = $Player1
    @Player2 = $Player2
    # @Player1_HPs = $Player1.hit_points
    # @Player2_HPs = $Player2.hit_points
    erb(:play)
  end

  get '/attack' do
    @Player1 = $Player1
    @Player2 = $Player2
    Game.new.attack(@Player2)

    # @Player2_HPs = $Player2.hit_points
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
