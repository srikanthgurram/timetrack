class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end

    def show
      if (params[:id])
        if Client.exists?(params[:id])
          @client =  Client.find(params[:id])
          @client_projects = @client.projects.paginate(:page => params[:page], :per_page => 10)
        else
          render :"errors/notfound"
        end
      end
    end

    #Controller to add new Client
    def new
      @client = Client.new
    end

    #Controller to save new Client
    def create
      @client = Client.new(params[:client].permit(:name, :comapny_id))
      if @client.valid?
        @client.save
        flash[:notice] = "Successfully added new client"
        redirect_to @client
      else
        flash[:notice] = @client.errors.messages
        redirect_to @client
      end
    end
end
