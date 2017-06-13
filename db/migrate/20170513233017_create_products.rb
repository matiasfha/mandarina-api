class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.integer :purchasePrice
      t.integer :salePrice
      t.integer :netPrice
      t.integer :stock

      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
