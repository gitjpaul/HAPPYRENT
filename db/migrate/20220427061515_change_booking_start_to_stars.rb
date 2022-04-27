class ChangeBookingStartToStars < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :start_at, :date
  end
end
