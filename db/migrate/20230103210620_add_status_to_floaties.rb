class AddStatusToFloaties < ActiveRecord::Migration[7.0]
  def change
    add_column :floaties, :listed, :boolean
  end
end
