class ParadasController < ApplicationController
  before_action :set_carona, only: [:create]

  def create
    @parada = @carona.paradas.build(parada_params)
    if @parada.save
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
