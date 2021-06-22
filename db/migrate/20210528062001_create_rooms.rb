class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :roomname
      t.string :roomintroduction
      t.integer :roomfee
      t.string :roomaddress

      t.timestamps
    end
  end
end
