class SongsController < ApplicationController

    before_action :find_song, only: [:show, :update, :edit]
    def index 
        @songs = Song.all
        render :index
    end

    def new
        @song = Song.new
        render :new
    end

    def create
        @song = Song.create(params_song)
        redirect_to song_path(@song)
    end

    def edit
        render :edit
    end

    def update
        @song.update(params_song)
        redirect_to song_path(@song)
    end

    def show
        render :show
    end

    private

    def find_song
        @song = Song.find(params[:id])
    end

    def params_song
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
