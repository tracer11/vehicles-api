class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def create
    @vehicle = Vehicle.create(
                              vin: params[:vin],
                              manufacture: params[:manufacture])
    render :show
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(
                                vin: params[:vin],
                                manufacture: params[:manufacture])
    render :show
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy

    render :show
  end
end
