class CreateItemsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :locker_id
      t.string :item_name, null: false
      t.timestamps
    end
  end
end
