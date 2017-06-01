class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :firstName
      t.string :lastName
      t.date :birthdate
      t.references :customer, foreign_key: true
      t.timestamps
    end
  end
end
