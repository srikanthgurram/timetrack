class Client < ActiveRecord::Base
	#add associations
	belongs_to :company
	has_many :projects

	#add validations
	validates :name, presence: true
	validates :name, uniqueness: true
  validates :company, presence: true
end
