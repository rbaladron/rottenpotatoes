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
    flash[:notice] = "#{@movie.title} se ha actualizado correctamente."    
    respond_to do |client_wants|
      client_wants.html { redirect_to movie_path(@movie) }
      client_wants.xml { render :xml => @movie.to_xml }
    end
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
    
    def check
      if params[:ratings]
        params[:ratings].keys
      else
        @all_ratings
      end
    end
end
