class ParadasController < ApplicationController
  before_action :set_carona, only: [:create, :destroy, :destroy_all]

  def create
    @parada = @carona.paradas.build(parada_params)
    if @parada.save
      
      redirect_to edit_carona_path(@carona)
    else
      flash[:error] = "Failed to add parada."
      redirect_to edit_carona_path(@carona)
    end
  end

  def destroy
    @carona = Carona.find(params[:carona_id])
    @parada = @carona.paradas.find(params[:id])
    @parada.destroy
    redirect_to carona_path(@carona)
  end

  def destroy_all
    @carona.paradas.destroy_all
    redirect_to edit_carona_path(@carona)
  end

  private

  def set_carona
    @carona = Carona.find(params[:carona_id])
  end

  def parada_params
    params.require(:parada).permit(:local, :data_hora)
  end
end

