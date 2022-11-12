class Api::V1::FacilitiesController < ApplicationController
    before_action :set_facility, only: [:show]

    def index
        facilities = Facility.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded facilities', data: facilities }
    end

    def show
        render json: { status: 'SUCCESS', message: 'Loaded the facilities', data: @facilities }
    end

    def find_show   
        facilities = Facility.find_by("#{params[:col]} = ?", params[:val])
        render json: { status: 'SUCCESS', message: 'Loaded the facilities', data: facilities }
    end 

    def set_facility
        @facilities = Facility.find(params[:id])
    end
end
