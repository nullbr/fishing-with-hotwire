class CreateFishCatches < ActiveRecord::Migration[7.0]
  def change
    create_table :fish_catches do |t|
      t.string  :species
      t.decimal :weight
      t.decimal :length
      t.integer :likes_count, default: 0

      t.references :bait, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
