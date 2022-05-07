class CreateTackleBoxItems < ActiveRecord::Migration[7.0]
  def change
    create_table :tackle_box_items do |t|
      t.references :bait, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
