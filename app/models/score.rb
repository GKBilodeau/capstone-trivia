class Score < ActiveRecord::Base
  def calculate_score
    correct = 0
    k=1
    10.times do
      if params[k] == params["#{k}_correct_option"] 
        correct += 1
      end
      k += 1
    end
    game_score = correct/10.to_f
    update(game_score: game_score)
  end
end
