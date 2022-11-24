class RemoveCityFromFloaties < ActiveRecord::Migration[7.0]
  def change
    remove_column :floaties, :city, :string
  end
end
