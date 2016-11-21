require ('sinatra')
require ('sinatra/contrib/all')
require_relative('models/rock_paper_scissors')
require ('json')


get '/who_wins/:player/:computer' do
  player = params[:player].to_s
  computer = params[:computer].to_s
  game = Game.new(player, computer)
  @result = game.who_wins()
  erb(:result)
end

get '/welcome' do

  erb(:welcome)
end