class CreateCardsTable < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :front
      t.text :back
      t.integer :deck_id
    end
  end
end
