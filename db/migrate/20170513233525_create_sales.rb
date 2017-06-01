class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :boleta
      t.integer :voucher
      t.references :user, foreign_key: true
      t.references :customer, foreign_key: true
      t.timestamps
    end
  end
end
