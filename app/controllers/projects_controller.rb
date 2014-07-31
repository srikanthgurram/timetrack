class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		if (params[:id])
			@project = Project.exists?(params[:id]) ? Project.find(params[:id]) : nil
		end
	end
end
