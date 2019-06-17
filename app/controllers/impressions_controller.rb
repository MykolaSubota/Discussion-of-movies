class ImpressionsController < ApplicationController
before_action :authenticate_user!
before_action :set_movie

def index
	
end
def create
	params[:impression][:user_id] = current_user.id
    params[:impression][:movie_id] = @movie.id
    @impression = Impression.new(impression_params)
    if @impression.save
      redirect_to movie_path(@movie.id)
    else
      render 'new'
    end
    
end

private 

def set_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end
def impression_params
	params.require(:impression).permit(:body, :user_id, :movie_id)
end


end

