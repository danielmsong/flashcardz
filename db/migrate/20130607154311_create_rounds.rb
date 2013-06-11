class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :user_id
      t.integer :deck_id
      t.integer :bad, :default => 0
      t.integer :good, :default => 0
      t.integer :ok, :default => 0
      t.timestamps
    end
  end
end
