class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		if (params[:id])
			@project = Project.exists?(params[:id]) ? Project.find(params[:id]) : nil
			@project_works = @project.works.paginate(:page => params[:page], :per_page => 10)
		end
	end
end
