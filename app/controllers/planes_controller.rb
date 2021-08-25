class PlanesController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @planes = Plane.all
  end

  def show
  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(plane_params)
    @plane.save
    redirect_to plane_path(@plane), notice: 'Airliner was successfully added!'
  end

  def edit
  end

  def update
    @plane.update(plane_params)
    redirect_to plane_path(@plane), notice: 'Airliner was successfully updated!'
  end

  def destroy
    @plane.destroy
    redirect_to planes_path, notice: 'Airliner was successfully deleted!'
  end

  private
  def plane_params
    params.require(:plane).permit(:name, :manufactor, :range, :engines,
      :aircraft_type, :passengers)
  end

  def find_restaurant
    @plane = Plane.find(params[:id])
  end
end
