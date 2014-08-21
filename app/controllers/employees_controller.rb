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

	#Controller to get the Employee work details
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

	#Controller to add new Employee
	def new
		@employee = Employee.new
	end

	#Controller to save new Employee record
	def create
		@employee = Employee.new(params[:employee].permit(:company_id, :first_name, :last_name, :username))
		if @employee.valid?
			@employee.save
			flash[:notice] = "Successfully added new Employee"
			redirect_to @employee
		else
			render 'new'
		end
	end
end
