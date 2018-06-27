class RegisterAttractionsController < ApplicationController
	before_action :authenticate_company!
	
	def index
		@attractions = Attraction.where(company_id: current_company.id)
	end

	def show
	end

	def edit
	end

	def destroy
	end
end
