class MoviesController < ApplicationController
	
	before_action :authenticate_user!, exept: [:index, :show]


	before_action :set_movie, only: [ :show, :edit, :update]


	def index
		@movies = Movie.all
	end
	def show
		
	end
	def new
		@movie = Movie.new
	end
	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to @movie
		else
			render'new'
		end
	end
	def edit
		
		
	end
	def update
		
		if @movie.update_attributes(movie_params)
			redirect_to @movie
		else
			render :edit
			
		end
	end
	

private

def set_movie
	@movie = Movie.find(params[:id])
end

def movie_params
	params.require(:movie).permit(:title, :description)
end
end
