class SectionsController < ApplicationController
  def show_s1
  	@person = Person.find(params[:person_id])
  	@url = person_sections_1_path
  end

  def update_s1
  	make_answer('question 1', params['question 1'], params['person_id'])
  	make_answer('question 2', params['question 2'], params['person_id'])
  	make_answer('question 3', params['question 3'], params['person_id'])
  	make_answer('question 4', params['question 4'], params['person_id'])
  	make_answer('question 5', params['question 5'], params['person_id'])
  	redirect_to person_sections_2_path
  end

  def show_s2
  	@person = Person.find(params[:person_id])
  	@url = person_sections_2_path
  end

  def update_s2
		make_answer('question 6', params['6'], params['person_id'])
    make_answer('question 7', params['7'], params['person_id'])
    make_answer('question 8', params['8'], params['person_id'])
    make_answer('question 9', params['9'], params['person_id'])
    make_answer('question 10', params['10'], params['person_id'])
  	#redirect_to person_sections_3_path
  end

  def show_s3
  	@person = Person.find(params[:person_id])
  	@url = person_sections_3_path
  	@questions = [Question.find('16'),	Question.find('17'), Question.find('18'), Question.find('19'), Question.find('20')]
  end

  def update_s3
  	make_answer(params['16'], params['person_id'])
  	make_answer(params['17'], params['person_id'])
  	make_answer(params['18'], params['person_id'])
  	make_answer(params['19'], params['person_id'])
  	make_answer(params['20'], params['person_id'])
  	redirect_to person_sections_4_path
  end

  def show_s4
  	@person = Person.find(params[:person_id])
  	@url = person_sections_4_path
  	@questions = [Question.find('21'),	Question.find('22'), Question.find('23'), Question.find('24'), Question.find('25')]
  end

  def update_s4
  	make_answer(params['21'], params['person_id'])
  	make_answer(params['22'], params['person_id'])
  	make_answer(params['23'], params['person_id'])
  	make_answer(params['24'], params['person_id'])
  	make_answer(params['25'], params['person_id'])
  	redirect_to person_sections_survey_complete_path
  end

  def show_survey_complete
  	@person = Person.find(params[:person_id])
  	@answers = Answer.where(person_id: @person.id)
  end

  private
  	def flash_msg
  		'Must not have blank answers'
  	end

  	def make_answer(question, answer, person_id)
      qa_string = question.to_s + ": " + answer.to_s
  		Answer.create(question_and_answer: qa_string, person_id: person_id)
  	end

end
