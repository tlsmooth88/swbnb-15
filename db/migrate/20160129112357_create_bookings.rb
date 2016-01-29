class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :host, index: true
      t.references :guest, index: true

      t.timestamps null: false
      
      t.index [:host_id, :guest_id], unique: true
    end
  end
end
