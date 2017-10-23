class QuestionsController < ApplicationController
  before_action :set_question, only: %i[destroy show]

  def index
    @questions = Question.all
  end

  def create
    question = Question.create questions_params

    redirect_to question || new_question_path, error: 'Failed to create question'
  end

  def destroy
    redirect_to @question.destroy ? questions_path : @question, error: 'Failed to delete question'
  end

  def new
    @question = Question.new
  end

  def show; end

  private

  def questions_params
    params.require(:question).permit(%i[text a b c d answer])
  end

  def set_question
    @question = Question.find params[:id]
  end
end
