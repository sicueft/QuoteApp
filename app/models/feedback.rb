class Feedback < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :comment, presence: true
end
