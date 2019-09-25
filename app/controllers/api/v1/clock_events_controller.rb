class Api::V1::ClockEventsController < ApplicationController
  before_action :set_user
  before_action :set_clock_event, only: [:show, :update, :destroy]
  

  # GET /clock_events
  # GET /clock_events.json
  def index
    if params[:user_id]
      @clock_events = ClockEvent.where(user_id: params[:user_id]).order(event_time: :desc)
    end
    render json: @clock_events
  end

  # GET /clock_events/1
  # GET /clock_events/1.json
  def show
    render json: @clock_event
  end

  # POST /clock_events
  # POST /clock_events.json
  def create
    @clock_event = ClockEvent.new(clock_event_params)

    if @clock_event.save
      render json: @clock_event, status: :created, location: clock_event_params
    else
      render json: @clock_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clock_events/1
  # PATCH/PUT /clock_events/1.json
  def update
    if @clock_event.update(clock_event_params)
      render json: @clock_event, status: :ok, location: clock_event_params
    else
      render json: @clock_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clock_events/1
  # DELETE /clock_events/1.json
  def destroy
    @clock_event.destroy
  end

  private

    def set_user
      @user = User.find(params[:user_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_clock_event
      @clock_event = @user.clock_events.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clock_event_params
      params.require(:clock_event).permit(:event_time, :type_evt, :user_id)      
    end
end
