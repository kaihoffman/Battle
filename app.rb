require 'sinatra'
require 'shotgun'


class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "SuparSekrit"
get '/' do
  erb(:index)
end

post '/names' do
  session[:player_1_name] = params[:player_1_name]
  session[:player_2_name] = params[:player_2_name]
  redirect '/play'
end

get '/play' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb(:play)
end

get '/attack' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb(:p1_attack)
end

end
