class AddQuestionAndAnswerToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :question_and_answer, :text
  end
end
