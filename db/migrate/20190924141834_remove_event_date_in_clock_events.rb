class RemoveEventDateInClockEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :clock_events, :event_date
  end
end
