class ArtistsController < ApplicationController

    before_action :find_artist, only: [:show, :update, :edit]
    def index 
        @artists = Artist.all
        render :index
    end

    def new
        @artist = Artist.new
        render :new
    end

    def create
        @artist = Artist.create(params_artist)
        redirect_to artist_path(@artist)
    end

    def edit
        render :edit
    end

    def update
        @artist.update(params_artist)
        redirect_to artist_path(@artist)
    end

    def show
        render :show
    end

    private

    def find_artist
        @artist = Artist.find(params[:id])
    end

    def params_artist
        params.require(:artist).permit(:name, :bio)
    end
end
