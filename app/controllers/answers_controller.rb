class AnswersController < ApplicationController
  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      flash[:notice] = "Your Answer has been saved!"
      redirect_to question_path(@question)
    else
      flash[:alert] = "Please fix these errors:"
      render :new
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      flash[:notice] = "Your answer has been updated"
      redirect to anwser_path(@answer)
    else
      flash[:alert] = "Please fix these errors:"
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.destroy
    reidrect_to question_path(@question)
  end

private
  def answer_params
    params.require(:answer).permit(:body, :net_vote)
  end
end
