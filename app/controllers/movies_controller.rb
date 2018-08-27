# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
       @movies = Movie.all
  end
  
  def show
       #id = params [:id]           # retrieve movie ID from URI route 
       #@movie = Movie.find(id)     # look up movie by unique ID
       # whill render app/views/movies/show.html.haml by default
       @movie = Movie.find(params[:id])
  end
  
  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{@movie.title} se ha creado correctamente."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update(movie_params)
    #@movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} se ha actualizado correctamente."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Película '#{@movie.title}' borrada."
    redirect_to movies_path
  end
  
  private
    def movie_params #:title, :rating, :description, :release_date
      params.require(:movie).permit(:title, :rating, :description, :release_date )
    end
end
