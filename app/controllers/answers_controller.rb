class AnswersController < ApplicationController
    def create
      @question = Question.find(params[:question_id])
      @answer = @question.content.create(answer_params)
      redirect_to survey_path(@survey)
    end

    private
    def answer_params
      params.require(:answer).permit(:content)
    end
end
