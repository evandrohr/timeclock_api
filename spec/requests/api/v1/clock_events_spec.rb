require 'rails_helper'

RSpec.describe "ClockEvents", type: :request do
  let(:auth_token) {
    User.create!(email: 'user@mail.com', password: '123123123', password_confirmation: '123123123' )
    post "/api/v1/authenticate", headers: { 'Content-Type': 'application/json' }, 
      params: {email: 'user@mail.com', password: '123123123'}.to_json
    response.parsed_body["auth_token"]
  }

  describe "GET /clock_events" do
    it "get response as 200" do
      user = User.create!(email: 'user2@mail.com', password: '123123123', password_confirmation: '123123123' )
      get api_v1_user_clock_events_path(user_id: user.id) + '.json', headers: {'Authorization': auth_token, 'Content-Type': 'application/json'}
      expect(response).to have_http_status(200)
    end
  end
end
