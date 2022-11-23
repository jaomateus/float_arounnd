class AddCoordinatesToFloaties < ActiveRecord::Migration[7.0]
  def change
    add_column :floaties, :latitude, :float
    add_column :floaties, :longitude, :float
  end
end
