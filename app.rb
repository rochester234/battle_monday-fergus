require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  get '/' do
    erb(:enter_name)
  end

  post '/names' do
    @Player1 = params[:Player1]
    @Player2 = params[:Player2]
    erb(:start)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
