class Api::V1::CategoriesController < ApplicationController

    def index
        categories = Category.order(created_at: :asc)
        render json: { status: 'SUCCESS', message: 'Loaded categories', data: categories }
    end

    def show
        # category = Category.find_by(name: params[:val])
        # puts category
        facilities = Facility.joins(:facility_categories).where('category_id = ?',params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded facilities', data: facilities }
    end
end
