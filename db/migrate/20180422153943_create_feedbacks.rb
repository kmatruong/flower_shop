class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.date :date
      t.string :email
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
