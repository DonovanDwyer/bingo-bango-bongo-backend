class CreateValueAssigns < ActiveRecord::Migration[5.2]
  def change
    create_table :value_assigns do |t|
      t.belongs_to :value, foreign_key: true
      t.belongs_to :bingo_card, foreign_key: true

      t.timestamps
    end
  end
end
