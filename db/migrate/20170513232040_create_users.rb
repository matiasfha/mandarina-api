class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firsName
      t.string :lastName
      t.string :rut
      t.string :email
      t.references :role, foreig_key: true
      t.timestamps
    end
    add_index :users, :email,                unique: true
    add_index :users, :rut, unique: true
  end
end

