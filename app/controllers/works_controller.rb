class WorksController < ApplicationController
	def index
		@works = Work.all.paginate(:page => params[:page], :per_page => 10).order(date_time_performed: :desc)
	end

	def show
		if (params[:id])
      if(Work.exists?(params[:id]))
			 @work =  Work.find(params[:id])
      else
        render :"errors/notfound"
      end
    end
	end
end
