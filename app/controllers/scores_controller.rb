class ScoresController < ApplicationController
  def create
    user_id = current_user.id
     Score.create(
      user_id: user_id,
      game_id: params[:id],
      game_score: 0 
    )
     redirect_to '/'
  end

end
