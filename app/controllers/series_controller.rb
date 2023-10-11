class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def create
    @serie = Series.new(serie_params)
    #
    # Agregar validacion
    #
  end

  def new
    @serie = Series.new
  end

  # Parametros
  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
