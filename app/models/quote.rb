class Quote < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	
	validates :name, presence: true
	validates :description, presence: true
	validates :description, uniqueness: true
end
