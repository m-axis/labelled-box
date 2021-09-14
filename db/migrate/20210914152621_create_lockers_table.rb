class CreateLockersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :lockers do |t|
      t.integer :user_id
      t.string :name
      t.string :code, null: false
      t.timestamps
    end
  end
end
