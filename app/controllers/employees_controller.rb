class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
		if (params[:id])
			@employee = Employee.exists?(params[:id]) ? Employee.find(params[:id]) : nil
		elsif(params[:slug])
			@employee = (Employee.find_by username: params[:slug])? (Employee.find_by username: params[:slug]): nil
		end
	end
end
