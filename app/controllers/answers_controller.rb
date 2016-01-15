class AnswersController < ApplicationController
	def new
		@answer = Answer.new
		@answer.person = @person
		@answer.option = @option
  end

  def create
  	@answer = Answer.new(answer_params)

  	@answer.save
    redirect_to @answer
  end

  private
  	def answer_params
  		params.require(:answer).permit(:person, :option)
  	end
end
