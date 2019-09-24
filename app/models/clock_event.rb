# == Schema Information
#
# Table name: clock_events
#
#  id         :uuid             not null, primary key
#  event_time :datetime
#  type_evt   :integer
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
  enum type_evt: [:clock_in, :clock_out]
  validates_presence_of :event_time, :type_evt, :user_id
end
