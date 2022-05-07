class CreateBaits < ActiveRecord::Migration[7.0]
  def change
    create_table :baits do |t|
      t.string  :name
      t.string  :category
      t.text    :description
      t.string  :image
      t.integer :tackle_box_items_count, default: 0

      t.timestamps
    end

    add_index :baits, :name, unique: true
  end
end
