class Api::V1::ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show, :update, :destroy]

  # GET /professionals
  def index
    @professionals = Professional.all
    professional_json = ProfessionalSerializer.new(@professionals).serialized_json
    render json: professional_json
  end


  def show
    @professional = Professional.find(params[:id])
    professional_json = ProfessionalSerializer.new(@professional).serialized_json
    render json: professional_json
  end

  # POST /professionals
  def create
    @professional = Professional.new(professional_params)

    if @professional.save
      render json: @professional, status: :created, location: @professional
    else
      render json: @professional.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /professionals/1
  def update
    if @professional.update(professional_params)
      render json: @professional
    else
      render json: @professional.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professionals/1
  def destroy
    @professional.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional
      @professional = Professional.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def professional_params
      params.require(:professional).permit(:name, :profession, :stars)
    end
end
