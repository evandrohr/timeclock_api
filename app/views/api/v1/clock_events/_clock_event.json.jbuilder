json.extract! clock_event, :id, :created_at, :updated_at
json.url api_v1_user_clock_event_url(clock_event, format: :json)