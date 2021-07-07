class AddDetailsToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :persons, :integer
    add_column :reservations, :many_days, :integer
  end
end
