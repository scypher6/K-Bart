class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :buyer_id
      t.integer :seller_id
      t.references :category, null: false, foreign_key: true
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
