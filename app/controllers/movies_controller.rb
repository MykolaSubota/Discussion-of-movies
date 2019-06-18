class MoviesController < ApplicationController
	
	before_action :authenticate_user!, exept: [:index, :show]


	before_action :set_movie, only: [:show, :upvote, :downvote]


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
	
	def upvote
		@movie.upvote_from current_user
		redirect_to movie_path
	end

	def downvote
		@movie.downvote_from current_user
		redirect_to movie_path
	end

private

def set_movie
	@movie = Movie.find(params[:id])
end

end
