class QuestionsController < ApplicationController
  def index
    if current_user.can_create_questions?
      @question = Question.new
      @questions = current_user.questions
    else
      redirect_to :back
      flash[:notice] = "Five questions is really all you should be focusing on.
      Try to create better questions if you feel like these aren't enough!"
    end
  end

  def create
    @question = current_user.questions.new(question_params)

    render @question
  end

  private

  def question_params
    params.require(:question).permit(:body)
  end
end
