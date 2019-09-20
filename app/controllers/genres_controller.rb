class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit, :update]

   def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
  end

  def show
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end
