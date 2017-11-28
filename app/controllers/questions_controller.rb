class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your question has ben saved!"
      redirect_to questions_path
    else
      flash[:alert] = "Please fix these errors:"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Your question has been update!"
      redirect_to question_path(@question)
    else
      flash[:alert] = "Please fix these errors:"
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @quesiton.destroy
    redirect_to questions_path
  end


private

  def question_params
    params.require(:question).permit(:title, :body, :net_vote)
  end

end
