class RemoveOptionIdFromAnswers < ActiveRecord::Migration 
  def change
  	remove_foreign_key :answers, :option
  	remove_reference :answers, :option, index: true
  end
end
