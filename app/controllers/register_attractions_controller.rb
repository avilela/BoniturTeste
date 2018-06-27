class RegisterAttractionsController < ApplicationController
	before_action :authenticate_company!
	before_action :set_attractive, only: [:show, :edit, :update, :destroy]

	def index
		@attractions = Attraction.where(company_id: current_company.id).order('id ASC')
	end

	def new
		@attraction = Attraction.new
	end

	def create
		@attraction = Attraction.new(attractive_params)
		@attraction.company_id = current_company.id
    	@attraction.save

    	redirect_to root_path
	end

	def update
		if @attraction.update(attraction_params)
        	redirect_to  root_path, notice: 'Atração Alterada com sucesso.'
        end
  	end

	def show
	end

	def edit
	end

	private 
		def attractive_params
			params.require(:attraction).permit(:name,:address,:duration_time,:max_people,:image,:price,:company_id)
		end

		def set_attractive
			@attraction = Attraction.find(params[:id])
		end

end
