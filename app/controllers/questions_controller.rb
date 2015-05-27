class QuestionsController < ApplicationController
  def new
    @user = current_user
    if @user.can_create_questions?
      @question = Question.new
      @questions = current_user.questions
    else
      redirect_to :back
      flash[:notice] = "Five questions is really all you should be focusing on.
      Try to create better questions if you feel like these aren't enough!"
    end
  end

  def create
    question = current_user.questions.new(question_params)
    if question.save
      render question
    else
      redirect_to :back
      flash[:notice] = "There was an error saving your question"
    end
  end

  private

  def question_params
    params.require(:question).permit(:body, :user_id)
  end
end
