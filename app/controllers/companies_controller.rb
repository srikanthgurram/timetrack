class CompaniesController < ApplicationController
	def index
		@companies = Company.all
		#render json: @companies
	end

	def show
		if (params[:id])
			@company = Company.exists?(params[:id]) ? Company.find(params[:id]) : nil
		end
	end

	def welcome
		#render plain: "Page Not Found", status: 404
		#render plain: "Welcome to Timer Tracker"
		#render layout: true
		render html: "<strong>Page Not Found</strong>".html_safe, status: 404
		#render js: "alert('Hello Rails');"
		#render file: "README.rdoc", content_type: "application/rss"
	end
end
