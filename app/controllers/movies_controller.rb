class MoviesController < ApplicationController
	
	before_action :authenticate_user!, exept: [:index, :show]


	before_action :set_movie, only: [:show]


	def index
		@movies = Movie.all
	end
	def show
		
	end
	def new
		
	end
	def create
		
	end
	def edit
		
		
	end
	def update
		
		
	end
	

private

def set_movie
	@movie = Movie.find(params[:id])
end

end
