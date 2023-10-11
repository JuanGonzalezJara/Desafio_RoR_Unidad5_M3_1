class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    #
    # Agregar validacion
    #
  end

  def new
    @movies = Movie.new
  end

  # Parametros
  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
