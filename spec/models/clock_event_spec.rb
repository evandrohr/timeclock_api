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

require 'rails_helper'

RSpec.describe ClockEvent, type: :model do
  let(:user) {
    User.create!(email: 'user@mail.com', password: '123123123', password_confirmation: '123123123' )
  }

  it "is valid with attributes" do
    expect(ClockEvent.new({ user_id: user.id, event_time: Time.now, type_evt: :clock_in})).to be_valid
  end

  it "is not valid without a type_evt" do
    expect(ClockEvent.new({ user_id: user.id, event_time: Time.now})).to be_invalid
  end
  
  it "is not valid without a event_time" do
    expect(ClockEvent.new({ user_id: user.id, type_evt: :clock_in})).to be_invalid
  end
end
