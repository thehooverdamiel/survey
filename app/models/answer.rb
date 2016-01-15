class Answer < ActiveRecord::Base
	has_one :option
	has_one :person

	validates :option, presence: true
	validates :person, presence: true
end
