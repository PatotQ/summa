class ObrasController < ApplicationController
    before_action :authenticate_usuario!
  
    def index
      @obras = current_usuario.obras
    end
  
    def show
      @obra = Obra.find(params[:id])
    end
  
    def new
      @obra = Obra.new
    end
  
    def create
      @obra = current_usuario.obras.build(obra_params)
      if @obra.save
        redirect_to @obra, notice: "La obra fue creada exitosamente."
      else
        render :new, alert: "No se pudo crear la obra."
      end
    end
  
    private
  
    def obra_params
      params.require(:obra).permit(:titulo, :descripcion, :dimensiones, :materiales, :anio, :imagen)
    end
  end
  