class AddNationToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :nation, :string
  end
end
