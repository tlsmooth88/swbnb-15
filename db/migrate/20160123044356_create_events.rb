class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.date :start
      t.date :end

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end
