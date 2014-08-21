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

  #Contoller to add new Work
  def new
    @work = Work.new
  end
  
  #Controller to sav new Work
  def create
    @work = Work.new(params[:work].permit(:employee_id, :project_id, :work_hours, :work_details, :date_time_performed))
    if @work.valid?
      @work.save
      flash[:notice] = 'Successfully added new work details'
      redirect_to @work
    else
      render 'new'
    end
  end
  
end
