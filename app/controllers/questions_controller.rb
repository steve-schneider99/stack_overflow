class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new

  end

  def create
    @user = User.find(current_user.id)
    @question = @user.questions.new(question_params)
    if @question.save
      flash[:notice] = "Question has been created!"
      redirect_to "/questions"
    else
      flash[:alert] = "Question could not be created - Try again."
      render :new
  end
end



private

  def question_params
    params.require(:question).permit(:question, :author)
  end

end
