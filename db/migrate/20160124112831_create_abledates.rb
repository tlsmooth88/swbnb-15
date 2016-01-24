class CreateAbledates < ActiveRecord::Migration
  def change
    create_table :abledates do |t|
      t.date :start

      t.timestamps null: false
    end
  end
end
