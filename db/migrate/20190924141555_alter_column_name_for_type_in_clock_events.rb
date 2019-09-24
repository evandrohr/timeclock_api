class AlterColumnNameForTypeInClockEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :clock_events, :type, :type_evt
  end
end
