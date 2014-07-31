class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
		if (params[:id])
			@employee = Employee.exists?(params[:id]) ? Employee.find(params[:id]) : nil
		end
	end
end
