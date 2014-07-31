class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	end

	def show
		if (params[:id])
			@company = Company.exists?(params[:id]) ? Company.find(params[:id]) : nil
		end
	end

end
