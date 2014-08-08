class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		if (params[:id])
			@project = Project.exists?(params[:id]) ? Project.find(params[:id]) : nil
		end
	end

	def works
		if (params[:id])
			@project = Project.exists?(params[:id]) ? Project.find(params[:id]) : nil
			@project_works = @project.works.paginate(:page => params[:page], :per_page => 10)
			#render :works
		end
	end
end
