class CreateClockEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :clock_events do |t|
      t.date :event_date
      t.time :event_time
      t.integer :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
