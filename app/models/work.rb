class Work < ActiveRecord::Base
	#add associations
	belons_to :employee
	belons_to :project

	#add validations
	validates :work_hours, presense: true
	validates :work_details, presense: true
	validates :work_hours, numericality: {greater_than: 0}	
end
