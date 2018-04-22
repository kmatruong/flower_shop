class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.date :date
      t.float :total_money
      t.references :user, foreign_key: true
      t.references :order_status, foreign_key: true

      t.timestamps
    end
  end
end
