class AddProtagonistToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :protagonist, :string
  end
end
