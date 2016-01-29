class AddEventIdToYoyakus < ActiveRecord::Migration
  def change
    add_column :yoyakus, :event_id, :integer
  end
end
