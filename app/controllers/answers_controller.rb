class AnswersController < ApplicationController

  before_action :redirect, only: :new

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
  end

  def create
    @answer = Answer.create(create_params)
  end

  private
  def create_params
  	params.require(:answer).permit(:text, :question_id).merge(user_id: current_user.id)
  end

  def redirect
  	if Answer.exist?(question_id: params[:question_id], user_id: current_user.id)
  	  redirect_to :root
  	end
  end

end
