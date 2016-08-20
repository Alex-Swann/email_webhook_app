class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :address
      t.string :email_type
      t.string :event
      t.integer :timestamp

      t.timestamps null: false
    end
  end
end
