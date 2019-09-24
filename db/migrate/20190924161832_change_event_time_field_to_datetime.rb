class ChangeEventTimeFieldToDatetime < ActiveRecord::Migration[6.0]
  def change
    remove_column :clock_events, :event_time
    add_column :clock_events, :event_time, :datetime
  end
end
