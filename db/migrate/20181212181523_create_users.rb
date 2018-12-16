class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.boolean :bingomaster
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
