class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def create
    @serie = Series.new(serie_params)
    if @serie.save
      redirect_to series_index_path
    else
      puts "Status: FAIL!"
      redirect_to series_new_path
    end
  end

  def new
    @series = Series.new
  end

  # Parametros
  def serie_params
    params.require(:series).permit(:name, :synopsis, :director)
  end
end
