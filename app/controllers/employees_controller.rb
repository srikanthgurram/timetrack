class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
		if (params[:id])
			@employee = Employee.exists?(params[:id]) ? Employee.find(params[:id]) : nil
		elsif(params[:slug])
			@employee = (Employee.find_by username: params[:slug])? (Employee.find_by username: params[:slug]): nil
			@employee_works = @employee.works.paginate(:page => params[:page], :per_page => 10)
		end
	end

	def work
		if(params[:id])
			@employee = Employee.exists?(params[:id]) ? Employee.find(params[:id]) : nil
			@employee_works = @employee.works.paginate(:page => params[:page], :per_page => 10)
			#render :work
		end
	end
end
