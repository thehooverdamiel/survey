class AddPersonToAnswer < ActiveRecord::Migration
  def change
    add_reference :answers, :person, index: true, foreign_key: true
  end
end
