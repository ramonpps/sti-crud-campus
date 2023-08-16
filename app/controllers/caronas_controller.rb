class CaronasController < ApplicationController
    before_action :set_carona, only: [:show, :edit, :update, :destroy]
  
    def index
      @caronas = Carona.all
    end
  
    def show
        @carona = Carona.find(params[:id])
        @paradas = @carona.paradas
    end
  
    def new
      @carona = Carona.new
    end
  
    def create
      @carona = Carona.new(carona_params)
      if @carona.save
        redirect_to @carona, notice: 'Carona criada com sucesso.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @carona.update(carona_params)
        redirect_to @carona, notice: 'Carona atualizada com sucesso.'
      else
        render :edit
      end
    end
  
    def destroy
        @carona.destroy
        redirect_to caronas_url, notice: 'Carona excluída com sucesso.'
      end
      
  
    private
  
    def set_carona
      @carona = Carona.find(params[:id])
    end
  
    def carona_params
      params.require(:carona).permit(:nome, :local_partida, :destino, :dia, :hora, :quantidade_passageiros, :valor_custo, :observacao)
    end
  end
  
