# == Schema Information
#
# Table name: clock_events
#
#  id         :uuid             not null, primary key
#  event_date :date
#  event_time :time
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_clock_events_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class ClockEvent < ApplicationRecord
  belongs_to :user
  enum type: [:clock_in, :clock_out]
end
