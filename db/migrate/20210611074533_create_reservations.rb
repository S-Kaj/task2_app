class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true  # 外部キーとしてuser_idで使う
      t.references :room, null: false, foreign_key: true  # 同上
      t.datetime :start_date
      t.datetime :end_date
      t.integer :total_price
      t.timestamps
    end
  end
end
