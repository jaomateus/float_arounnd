class ChangeFloatiesListedDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :floaties, :listed, false
  end
end
