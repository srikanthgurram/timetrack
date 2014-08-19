class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
		if params[:id]
			if Employee.exists?(params[:id])
				@employee =  Employee.find(params[:id])
			end
		elsif params[:slug]
			if Employee.find_by username: params[:slug]
				@employee = Employee.find_by username: params[:slug]
				@employee_works = @employee.works.paginate(:page => params[:page], :per_page => 10)
			else
				render :"errors/notfound"
			end
		end
	end

	def work
		if params[:id]
			if Employee.exists?(params[:id])
				@employee = Employee.find(params[:id])
				@employee_works = @employee.works.paginate(:page => params[:page], :per_page => 10)
			else
				render :"errors/notfound"
			end
		end
	end

	def new
		@employee = Employee.new
	end
end
