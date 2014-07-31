class Work < ActiveRecord::Base
	#add associations
	belongs_to :employee
	belongs_to :project

	#add validations
	validates :work_hours, presence: true
	validates :work_details, presence: true
	validates :date_time_performed, presence: true
	validates :work_hours, numericality: {greater_than: 0}	
end
