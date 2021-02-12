class Api::V1::DriversController < ApplicationController
  def index
    @drivers = Driver.all.order(surname: :desc)
    render json: @drivers
  end
end
