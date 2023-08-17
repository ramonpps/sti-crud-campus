class CampusController < ApplicationController
  before_action :set_campu, only: %i[ show edit update destroy ]
  def index
    @campus = Campu.all
  end

  def show
  end

  def new
    @campu = Campu.new
  end
  
  def edit
  end

  def create
    @campu = Campu.new(campu_params)

    respond_to do |format|
      if @campu.save
        format.html { redirect_to campu_url(@campu), notice: "Campu was successfully created." }
        format.json { render :show, status: :created, location: @campu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @campu.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @campu.update(campu_params)
        format.html { redirect_to campu_url(@campu), notice: "Campu was successfully updated." }
        format.json { render :show, status: :ok, location: @campu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @campu.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @campu.destroy

    respond_to do |format|
      format.html { redirect_to campus_url, notice: "Campu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_campu
      @campu = Campu.find(params[:id])
    end

    def campu_params
      params.require(:campu).permit(:Descrição, :Endereço, :Número, :Bairro, :Cidade, :CEP, :Desativação)
    end
end
