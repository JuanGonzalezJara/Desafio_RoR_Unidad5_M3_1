class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_index_path
    else
      puts "Status: FAIL!"
      redirect_to movies_new_path
    end
  end

  def new
    @movie = Movie.new
  end

  # Parametros
  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
