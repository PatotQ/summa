class IdeasController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to @idea, notice: "La idea fue creada exitosamente."
    else
      render :new, alert: "No se pudo crear la idea."
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:titulo, :descripcion)
  end
end
