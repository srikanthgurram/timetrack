class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  #Show controller
  def show
    if params[:id]
      if Project.exists?(params[:id])
        @project =  Project.find(params[:id])
      else
       render :"errors/notfound"      
      end
    end
  end

  #Works controller
  def works
    if (params[:id])
      if Project.exists?(params[:id])
        @project = Project.find(params[:id])
        @project_works = @project.works.paginate(:page => params[:page], :per_page => 10)
      else
        render :"errors/notfound"
      end
    end
  end

  def new
    @project = Project.new
  end
  
end
