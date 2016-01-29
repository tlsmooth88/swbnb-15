class CreateYoyakus < ActiveRecord::Migration
  def change
    create_table :yoyakus do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      
      t.timestamps null: false
      t.index [:event_id, :created_at]
    end
  end
end
