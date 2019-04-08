require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative ("models/game.rb")

get '/:hand1/:hand2' do

  hand1 = params['hand1']
  hand2 = params['hand2']
  @result = @game.play_game()
  erb (:result)


end
