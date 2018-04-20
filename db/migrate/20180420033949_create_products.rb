class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.text :detail
      t.float :price
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
