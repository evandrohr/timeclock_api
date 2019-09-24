require "rails_helper"

RSpec.describe Api::V1::ClockEventsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/api/v1/users/1/clock_events").to route_to("api/v1/clock_events#index", user_id: "1")
    end

    it "routes to #show" do
      expect(:get => "/api/v1/users/1/clock_events/1").to route_to("api/v1/clock_events#show", id: "1", user_id: "1")
    end


    it "routes to #create" do
      expect(:post => "/api/v1/users/1/clock_events").to route_to("api/v1/clock_events#create", user_id: "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/v1/users/1/clock_events/1").to route_to("api/v1/clock_events#update", :id => "1", user_id: "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/v1/users/1/clock_events/1").to route_to("api/v1/clock_events#update", :id => "1", user_id: "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/v1/users/1/clock_events/1").to route_to("api/v1/clock_events#destroy", :id => "1", user_id: "1")
    end
  end
end
