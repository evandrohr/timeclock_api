require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe Api::V1::ClockEventsController, type: :controller do

  let(:valid_user) {
    User.create!(
      name: 'Usuario',
      email: 'another_user@mail.com',
      password: '123123123',
      password_confirmation: '123123123')
  }

  let(:valid_clock_event) {
    {
      event_time: Time.new(2019,9,24,8,0,0),
      type_evt: :clock_in,
      user_id: valid_user.id
    }
  }

  let(:invalid_clock_event) {
    {
      event_time: nil,
      type_evt: :clock_in,
      user_id: valid_user.id
    }
  }

  let(:auth_token) {
    User.create!(email: 'user@mail.com', password: '123123123', password_confirmation: '123123123' )
    AuthenticateUser.call('user@mail.com', '123123123').result
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ClockEventsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      clock_event = ClockEvent.create! valid_clock_event
      request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
      get :index, params: {user_id: valid_user.id}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      clock_event = ClockEvent.create! valid_clock_event
      request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
      get :show, params: {id: clock_event.to_param, user_id: valid_user.id}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ClockEvent" do
        request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
        expect {
          post :create, params: {user_id: valid_user.id, clock_event: valid_clock_event}, session: valid_session
        }.to change(ClockEvent, :count).by(1)
      end

      it "renders a JSON response with the new clock_event" do
        request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
        post :create, params: {user_id: valid_user.id, clock_event: valid_clock_event}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to include('application/json')
        expect(response.parsed_body['id']).to eq(ClockEvent.find(response.parsed_body['id']).id)
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new clock_event" do
        request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
        post :create, params: {user_id: valid_user.id, clock_event: invalid_clock_event}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to include('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          event_time: Time.new(2019,9,23,8,0,0),
          type_evt: :clock_out,
          user_id: valid_user.id
        }
      }

      it "updates the requested clock_event" do
        request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
        clock_event = valid_user.clock_events.create! valid_clock_event
        put :update, params: {user_id: valid_user.id, id: clock_event.to_param, clock_event: new_attributes}, session: valid_session
        clock_event.reload
        expect(clock_event.event_time).to eq(new_attributes[:event_time])
        expect(clock_event.type_evt).to eq(new_attributes[:type_evt].to_s)
      end

      it "renders a JSON response with the clock_event" do
        request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
        clock_event = ClockEvent.create! valid_clock_event

        put :update, params: {user_id: valid_user.id, id: clock_event.to_param, clock_event: valid_clock_event}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to include('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the clock_event" do
        request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
        clock_event = ClockEvent.create! valid_clock_event

        put :update, params: {user_id: valid_user.id, id: clock_event.to_param, clock_event: invalid_clock_event}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to include('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested clock_event" do
      request.headers.merge!({'Authorization': auth_token, 'Content-Type': 'application/json'})
      clock_event = ClockEvent.create! valid_clock_event
      expect {
        delete :destroy, params: {user_id: valid_user.id, id: clock_event.to_param}, session: valid_session
      }.to change(ClockEvent, :count).by(-1)
    end
  end

end
