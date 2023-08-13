class CampisController < ApplicationController
  before_action :set_campi, only: %i[ show edit update destroy ]

  # GET /campis or /campis.json
  def index
    @campis = Campi.all
  end

  # GET /campis/1 or /campis/1.json
  def show
  end

  # GET /campis/new
  def new
    @campi = Campi.new
  end

  # GET /campis/1/edit
  def edit
  end

  # POST /campis or /campis.json
  def create
    @campi = Campi.new(campi_params)

    respond_to do |format|
      if @campi.save
        format.html { redirect_to campi_url(@campi), notice: "Campi was successfully created." }
        format.json { render :show, status: :created, location: @campi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @campi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campis/1 or /campis/1.json
  def update
    respond_to do |format|
      if @campi.update(campi_params)
        format.html { redirect_to campi_url(@campi), notice: "Campi was successfully updated." }
        format.json { render :show, status: :ok, location: @campi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @campi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campis/1 or /campis/1.json
  def destroy
    @campi.destroy

    respond_to do |format|
      format.html { redirect_to campis_url, notice: "Campi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campi
      @campi = Campi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campi_params
      params.require(:campi).permit(:Name, :Address, :Number, :Neighborhood, :City, :Postal_code, :Deactivation)
    end
end
