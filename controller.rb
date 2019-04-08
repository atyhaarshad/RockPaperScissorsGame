require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative ("models/game.rb")

get "/" do
  erb (:result)
end

get "/welcome" do
  erb (:welcome)
end

get '/:hand1/:hand2' do

  game = Game.new(params['hand1'], params['hand2'])
  @result = game.play_game()
  erb (:result)


end
