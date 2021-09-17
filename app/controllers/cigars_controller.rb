class CigarsController < ApplicationController
  before_action :set_cigar, only: [:show, :update, :destroy]

  # GET /cigars
  def index
    @cigars = Cigar.all

    render json: @cigars
  end

  # GET /cigars/1
  def show
    render json: @cigar
  end

  # POST /cigars
  def create
    @cigar = Cigar.new(cigar_params)

    if @cigar.save
      render json: @cigar, status: :created, location: @cigar
    else
      render json: @cigar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cigars/1
  def update
    if @cigar.update(cigar_params)
      render json: @cigar
    else
      render json: @cigar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cigars/1
  def destroy
    @cigar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cigar
      @cigar = Cigar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cigar_params
      params.require(:cigar).permit(:brand, :line, :country, :size, :about)
    end
end
