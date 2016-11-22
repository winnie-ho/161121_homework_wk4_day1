require ('sinatra')
require ('sinatra/contrib/all')
require_relative('models/game')
require ('json')


get '/who_wins/:player' do
  player = params[:player].to_s
  computer = ["rock", "paper", "scissors"].shuffle.first
  @game = Game.new(player, computer)
  @result = @game.who_wins()
  erb(:result)
end

# get '/who_wins/:player/:computer' do
#   player = params[:player].to_s
#   computer = params[:computer].to_s
#   game = Game.new(player, computer)
#   @result = game.who_wins()
#   erb(:result)
# end

# welcome page
get '/welcome' do
  erb(:welcome)
end