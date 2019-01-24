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
  $player1 = Player.new(params[:player_1_name])
  $player2 = Player.new(params[:player_2_name])
  $game = Game.new
  redirect '/play'
end

get '/play' do
  @player_1_name = $player1.name
  @player_2_name = $player2.name
  @player_1_hitpoints = $player1.hitpoints
  @player_2_hitpoints = $player2.hitpoints
  erb(:play)
end

get '/attack' do
  @player_1 = $player1
  @player_2 = $player2
  $game.attack($player2)
  erb(:p1_attack)
end

end
