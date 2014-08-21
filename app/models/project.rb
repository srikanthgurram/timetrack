class Project < ActiveRecord::Base
	#add associations
	belongs_to :company
	belongs_to :client
	has_many :employees
	has_many :works

	#add validations
	validates :name, presence: true
	validates :name, uniqueness: true
  validates :company, presence: true
  validates :client, presence:true
end
