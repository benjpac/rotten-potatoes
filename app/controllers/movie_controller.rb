class MovieController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new    
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = Review.all
  end

  def update
    
  end

private
  def movie_params
    params.require(:movie).permit(:title,:genre,:director,:writer,:studio,:released,:runtime,:summary)
  end
end
