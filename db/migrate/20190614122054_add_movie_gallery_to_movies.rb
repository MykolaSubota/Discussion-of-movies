class AddMovieGalleryToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :movie_gallery, :string
  end
end
