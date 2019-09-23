class SongsController < ApplicationController

    before_action :find_song, only: [:show, :edit, :update]

    def index 
        @songs = Song.all 
        render :index
    end 

    def show
        render :show
    end

    def new
        @song = Song.new
        render :new
    end 

    def create
        @song = Song.create(strong_params)
        redirect_to song_path(@song)
    end 

    def edit 
        render :edit 
    end 

    def update
        @song.update(strong_params)
        redirect_to song_path(@song)
    end 


private 

    def strong_params 
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end 

    def find_song 
        @song = Song.find(params[:id])
    end 
    
end
