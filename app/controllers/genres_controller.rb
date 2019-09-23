class GenresController < ApplicationController

    before_action :find_genre, only: [:show, :update, :edit]
    def index 
        @genres = Genre.all
        render :index
    end

    def new
        @genre = Genre.new
        render :new
    end

    def create
        @genre = Genre.create(params_genre)
        redirect_to genre_path(@genre)
    end

    def edit
        render :edit
    end

    def update
        @genre.update(params_genre)
        redirect_to genre_path(@genre)
    end

    def show
        render :show
    end

    private

    def find_genre
        @genre = Genre.find(params[:id])
    end

    def params_genre
        params.require(:genre).permit(:name)
    end
end
