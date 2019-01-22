require 'sinatra'
require 'shotgun'

class Battle < Sinatra::Base

get '/' do
  erb(:index)
end

end
