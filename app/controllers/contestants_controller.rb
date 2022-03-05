class ContestantsController < ApplicationController
  def index 
    render json: Contestant.all
  end

  def current_round 
    @contestants = Contestant.where(status: nil)
    @current_round = @contestants.shuffle.first(3)
    @current_round.map { |contestant| contestant.update(status: "completed")}
    render json: @current_round
  end

  def reset 
    @contestants = Contestant.all 
    @contestants.where(status: "completed").update_all("status": nil)
  end

  def completed_rounds
    @completed_rounds = Contestant.where(status: "completed")
    render json: @completed_rounds
  end
end
