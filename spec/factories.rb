FactoryBot.define do
  factory :clock_event do
    event_date { "2019-09-24" }
    event_time { "2019-09-24 03:15:42" }
    type { 1 }
    user { nil }
  end

  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end
end
