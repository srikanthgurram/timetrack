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

end
