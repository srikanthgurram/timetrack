class ClientsController < ApplicationController
	def index
		@clients = Client.all
	end

	def show
		if (params[:id])
			@client = Client.exists?(params[:id]) ? Client.find(params[:id]) : nil
			@client_projects = @client.projects.paginate(:page => params[:page], :per_page => 10)
		end
	end

end
