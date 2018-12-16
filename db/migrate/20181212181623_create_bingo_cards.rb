class CreateBingoCards < ActiveRecord::Migration[5.2]
  def change
    create_table :bingo_cards do |t|
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
