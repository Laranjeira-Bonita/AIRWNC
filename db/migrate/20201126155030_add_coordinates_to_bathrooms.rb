class AddCoordinatesToBathrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :bathrooms, :latitude, :float
    add_column :bathrooms, :longitude, :float
  end
end
