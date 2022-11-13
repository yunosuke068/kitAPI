class Api::V1::EventsController < ApplicationController
    def index 
        events = Event.order(created_at: :desc)
        render json: {status: 'SUCCESS', message: 'Loaded events', data: events}
    end

    def show
        event = Event.find_by(facility_id: params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded events', data: event}
    end
end
