class WorksController < ApplicationController
	def index
		@works = Work.all
	end

	def show
		if (params[:id])
			@work = Work.exists?(params[:id]) ? Work.find(params[:id]) : nil
		end
	end
end
