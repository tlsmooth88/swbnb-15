class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :booking, :boolean
  end
end
