class AddCoordinatesToWatches < ActiveRecord::Migration[5.2]
  def change
    add_column :watches, :latitude, :float
    add_column :watches, :longitude, :float
  end
end
