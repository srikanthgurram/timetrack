class Work < ActiveRecord::Base
	#add associations
	belongs_to :employee
	belongs_to :project

	#add validations
	validates :work_hours, presense: true
	validates :work_details, presense: true
	validates :work_hours, numericality: {greater_than: 0}	
end
