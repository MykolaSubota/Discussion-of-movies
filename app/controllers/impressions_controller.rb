class ImpressionsController < ApplicationController

def create
	@movie = Movie.find(params[:movie_id])
	@impression = @movie.impressions.create(impression_params)
    redirect_to movie_path(@movie)
end

private def impression_params
	params.require(:impression).permit(:body)
end


end

