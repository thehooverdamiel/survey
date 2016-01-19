class SectionsController < ApplicationController
  def show_s1
  	@person = Person.find(params[:person_id])
  	@url = person_sections_1_path
  end

  def update_s1
    person = Person.find(params[:person_id])

    person.answers.create(question_and_answer: 'question 1: ' + params['question 1'].to_s)
  	person.answers.create(question_and_answer: 'question 2: ' + params['question 2'].to_s)
  	person.answers.create(question_and_answer: 'question 3: ' + params['question 3'].to_s)
  	person.answers.create(question_and_answer: 'question 4: ' + params['question 4'].to_s)
  	person.answers.create(question_and_answer: 'question 5: ' + params['question 5'].to_s)
  	redirect_to person_sections_2_path
  end

  def show_s2
  	@person = Person.find(params[:person_id])
  	@url = person_sections_2_path
  end

  def update_s2
    person = Person.find(params[:person_id])

		person.answers.create(question_and_answer: 'question 6: ' + params['question 6'].to_s)
    person.answers.create(question_and_answer: 'question 7: ' + params['question 7'].to_s)
    person.answers.create(question_and_answer: 'question 8: ' + params['question 8'].to_s)
    person.answers.create(question_and_answer: 'question 9: ' + params['question 9'].to_s)
    person.answers.create(question_and_answer: 'question 10: ' + params['question 10'].to_s)
  	redirect_to person_sections_3_path
  end

  def show_s3
  	@person = Person.find(params[:person_id])
  	@url = person_sections_3_path
  end

  def update_s3
  	person = Person.find(params[:person_id])

    person.answers.create(question_and_answer: 'question 11: ' + params['question 11'].to_s)
    person.answers.create(question_and_answer: 'question 12: ' + params['question 12'].to_s)
    person.answers.create(question_and_answer: 'question 13: ' + params['question 13'].to_s)
    person.answers.create(question_and_answer: 'question 14: ' + params['question 14'].to_s)
    person.answers.create(question_and_answer: 'question 15: ' + params['question 15'].to_s)
  	redirect_to person_sections_4_path
  end

  def show_s4
  	@person = Person.find(params[:person_id])
  	@url = person_sections_4_path
  end

  def update_s4
  	person = Person.find(params[:person_id])
    
    person.answers.create(question_and_answer: 'question 16: ' + params['question 16'].to_s)
    person.answers.create(question_and_answer: 'question 17: ' + params['question 17'].to_s)
    person.answers.create(question_and_answer: 'question 18: ' + params['question 18'].to_s)
    person.answers.create(question_and_answer: 'question 19: ' + params['question 19'].to_s)
    person.answers.create(question_and_answer: 'question 20: ' + params['question 20'].to_s)
  	redirect_to person_sections_survey_complete_path
  end

  def show_survey_complete
  	@person = Person.find(params[:person_id])
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
