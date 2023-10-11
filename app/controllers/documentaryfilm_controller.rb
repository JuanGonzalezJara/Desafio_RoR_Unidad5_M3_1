class DocumentaryfilmController < ApplicationController
  def index
    @documentary_films = DocumentaryFilm.all
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)
    if @documentary_film.save
      redirect_to documentaryfilm_index_path
    else
      puts "Status: FAIL!"
      redirect_to documentaryfilm_new_path
    end
  end

  def new
    @documentary_films = DocumentaryFilm.new
  end

  # Parametros
  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
