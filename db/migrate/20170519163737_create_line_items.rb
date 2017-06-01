class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :price
      t.integer :total_price
      t.references :sale, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
