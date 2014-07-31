class Company < ActiveRecord::Base
	#add associations
	has_many :clients
	has_many :projects
	has_many :employees

	#add validations
	validates :name, uniqueness: true
	validates :name, presence: true
end
