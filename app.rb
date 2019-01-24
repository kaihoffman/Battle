require 'sinatra'
require 'shotgun'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "SuparSekrit"


get '/' do
  erb(:index)
end

post '/names' do
  $game = Game.new(
    Player.new(params[:player_1_name]),
    Player.new(params[:player_2_name]))
  redirect '/play'
end

get '/play' do
  @game = $game
  erb(:play)
end

get '/attack' do
  @game = $game
  @game.attack(@game.player2)
  erb(:attack)
end

end
