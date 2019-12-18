class GenresController < ApplicationController

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(params.require(:genre).permit(:name, :artist_id, :genre_id))
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre = Genre.update(params.require(:genre).permit(:name, :artist_id, :genre_id))
        redirect_to genre_path(@genre)
    end

end
