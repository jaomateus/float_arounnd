class CreateFloaties < ActiveRecord::Migration[7.0]
  def change
    create_table :floaties do |t|
      t.string :title
      t.text :details
      t.string :category
      t.integer :price
      t.string :city
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
