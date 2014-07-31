class Employee < ActiveRecord::Base
	#add associations
	belongs_to :company
	has_many :works
	has_many :projects, :through => :works

	#add validations
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :username, uniqueness: true
	validates :username, length:{ minimum: 5 }

end
