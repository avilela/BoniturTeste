class AttractionsController < ApplicationController
  before_action :set_attraction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_company!

  def index
    @attractions = Attraction.where(company_id: current_company.id)
  end

  def show
  end

  def new
    @attraction = Attraction.new
  end

  def edit
  end

  def create
    @attraction = Attraction.new(attraction_params)
    @attraction.company_id = current_company.id
    @attraction.image.attach(attraction_params[:image])

    respond_to do |format|
      if @attraction.save
        
        format.html { redirect_to @attraction, notice: 'Atração criada com sucesso.' }
        format.json { render :show, status: :created, location: @attraction }
      else
        format.html { render :new }
        format.json { render json: @attraction.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      @attraction.image.attach(attraction_params[:image])
      if @attraction.update(attraction_params)
        format.html { redirect_to @attraction, notice: 'Atração atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @attraction }
      else
        format.html { render :edit }
        format.json { render json: @attraction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attraction.image.purge
    @attraction.destroy
    respond_to do |format|
      format.html { redirect_to attractions_url, notice: 'Atração foi apagada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    def set_attraction
      @attraction = Attraction.find(params[:id])
    end

    def attraction_params
      params.require(:attraction).permit(:name, :address, :duration_time, :max_people, :price, :image,:company_id)
    end
end
