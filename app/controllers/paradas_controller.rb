class ParadasController < ApplicationController
  before_action :set_carona, only: [:create, :destroy, :destroy_all]

  def create
    @parada = @carona.paradas.build(parada_params)
    if @parada.save
      redirect_to edit_carona_path(@carona)
    end
  end

  def destroy_all
    @carona.paradas.destroy_all
    redirect_to edit_carona_path(@carona), notice: 'Todas as paradas foram excluídas com sucesso.'
  end

  private

  def set_carona
    @carona = Carona.find(params[:carona_id])
  end

  def parada_params
    params.require(:parada).permit(:local, :data_hora)
  end
end
