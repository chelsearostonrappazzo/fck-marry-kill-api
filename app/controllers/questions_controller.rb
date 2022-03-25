class QuestionsController < ApplicationController
  def current_question
    @current_question = Question.all.shuffle.first
    render json: @current_question
  end
end
