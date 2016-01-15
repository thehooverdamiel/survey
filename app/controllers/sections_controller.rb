class SectionsController < ApplicationController
  def show_s1
  	@person = Person.find(params[:person_id])
  	@url = person_sections_1_path
  	@questions = [Question.find('1'),	Question.find('7'), Question.find('8'), Question.find('9'), Question.find('10')]
  end

  def update_s1
  	empties = false
  	make_answer(params['1'], params['person_id'], person_sections_1_path)
  	make_answer(params['7'], params['person_id'], person_sections_1_path)
  	make_answer(params['8'], params['person_id'], person_sections_1_path)
  	make_answer(params['9'], params['person_id'], person_sections_1_path)
  	make_answer(params['10'], params['person_id'], person_sections_1_path)
  	redirect_to person_sections_2_path
  end

  def show_s2
  	@person = Person.find(params[:person_id])
  	@url = person_sections_2_path
  	@questions = [Question.find('11'),	Question.find('12'), Question.find('13'), Question.find('14'), Question.find('15')]
  end

  def update_s2
		make_answer(params['11'], params['person_id'], person_sections_2_path)
  	make_answer(params['12'], params['person_id'], person_sections_2_path)
  	make_answer(params['13'], params['person_id'], person_sections_2_path)
  	make_answer(params['14'], params['person_id'], person_sections_2_path)
  	make_answer(params['15'], params['person_id'], person_sections_2_path)
  	redirect_to person_sections_3_path
  end

  def show_s3
  	@person = Person.find(params[:person_id])
  	@url = person_sections_3_path
  	@questions = [Question.find('16'),	Question.find('17'), Question.find('18'), Question.find('19'), Question.find('20')]
  end

  def update_s3
  	make_answer(params['16'], params['person_id'], person_sections_3_path)
  	make_answer(params['17'], params['person_id'], person_sections_3_path)
  	make_answer(params['18'], params['person_id'], person_sections_3_path)
  	make_answer(params['19'], params['person_id'], person_sections_3_path)
  	make_answer(params['20'], params['person_id'], person_sections_3_path)
  	redirect_to person_sections_4_path
  end

  def show_s4
  	@person = Person.find(params[:person_id])
  	@url = person_sections_4_path
  	@questions = [Question.find('21'),	Question.find('22'), Question.find('23'), Question.find('24'), Question.find('25')]
  end

  def update_s4
  	make_answer(params['21'], params['person_id'], person_sections_4_path)
  	make_answer(params['22'], params['person_id'], person_sections_4_path)
  	make_answer(params['23'], params['person_id'], person_sections_4_path)
  	make_answer(params['24'], params['person_id'], person_sections_4_path)
  	make_answer(params['25'], params['person_id'], person_sections_4_path)
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

  	def make_answer(option_id, person_id, url)
  		if option_id.present?
  		  			Answer.create(option_id: option_id, person_id: person_id)
  		#else
  			#flash[:notice] = "Must not have blank answers"
  			#empties = true
			end
  	end

end
