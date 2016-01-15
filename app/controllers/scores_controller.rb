class ScoresController < ApplicationController
  def index
    
  end

  def create
    if current_user
      correct = 0
      k=1
      10.times do
        if params["#{k}"] == params["#{k}_correct_option"] 
          correct += 1
        end
        k += 1
      end
      Score.create(
        user_id: current_user.id,
        game_id: params[:game_id],
        game_score: correct
        )

      if params[:favorite]
        Favorite.create(user_id: current_user.id, game_id: params[:game_id])
      end
    end
     redirect_to '/'
  end

end