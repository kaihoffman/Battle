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
  @player_1_name = $game.player1.name
  @player_2_name = $game.player2.name
  @player_1_hitpoints = $game.player1.hitpoints
  @player_2_hitpoints = $game.player2.hitpoints
  erb(:play)
end

get '/attack' do
  @player_1 = $game.player1
  @player_2 = $game.player2
  $game.attack($game.player2)
  erb(:p1_attack)
end

end
