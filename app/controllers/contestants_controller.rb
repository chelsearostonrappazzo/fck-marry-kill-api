class ContestantsController < ApplicationController
  def index 
    render json: Contestant.all
  end

  def current_round 
    @contestants = Contestant.where(completed: false)
    @current_round = @contestants.shuffle.first(3)
    @current_round.map { |contestant| contestant.update(completed: true)}
    render json: @current_round
  end

  def reset 
    @contestants = Contestant.where(completed: true).update_all(completed: false)
  end

  def completed_rounds
    @completed_rounds = Contestant.where(completed: true)
    render json: @completed_rounds
  end
end
