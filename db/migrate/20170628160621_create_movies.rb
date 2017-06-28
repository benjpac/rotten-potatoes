class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :director
      t.string :writer
      t.string :studio
      t.datetime :released
      t.integer :runtime
      t.text :summary

      t.timestamps
    end
  end
end
