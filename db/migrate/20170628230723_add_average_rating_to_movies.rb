class AddAverageRatingToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :averate_rating, :integer
  end
end
