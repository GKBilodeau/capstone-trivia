class ScoresController < ApplicationController
  def create
    correct = 0
    k=1
    10.times do
      if params["#{k}"] == params["#{k}_correct_option"] 
        correct += 1
      end
      k += 1
      puts k
    end
    game_score = correct.to_f/10.to_f
    puts game_score
    puts correct
    Score.create(
      user_id: current_user.id,
      game_id: params[:id],
      game_score: correct
      )
     redirect_to '/'
  end

end
