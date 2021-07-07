class ArtistsController < ApplicationController
    
    before_action :find_artist, only: [:show, :edit, :update]

    def index 
        @artists = Artist.all 
        render :index 
    end 

    def show
        render :show
    end

    def new
        @artist = Artist.new 
        render :new
    end 

    def create
        @artist = Artist.create(strong_params) 
        redirect_to artist_path(@artist)
    end 

    def edit 
        render :edit 
    end 

    def update
        @artist.update(strong_params) 
        redirect_to artist_path(@artist)
    end 

private 

    def strong_params
        params.require(:artist).permit(:name, :bio)
    end 

    def find_artist 
        @artist = Artist.find(params[:id])
    end 

end
