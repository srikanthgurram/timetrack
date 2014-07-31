class ClientsController < ApplicationController
	def index
		@clients = Client.all
	end

	def show
		if (params[:id])
			@client = Client.exists?(params[:id]) ? Client.find(params[:id]) : nil
		end
	end

end
