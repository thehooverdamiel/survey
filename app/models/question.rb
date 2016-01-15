class Question < ActiveRecord::Base
	validates :text, presence: true
	has_many :options
	belongs_to :answer
end
