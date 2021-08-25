class PlanesController < ApplicationController
  def index
    @planes = Plane.all
  end

  def show
    @plane = Plane.find(params[:id])
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
    @plane = Plane.find(params[:id])
  end

  def update
    @plane = Plane.find(params[:id])
    @plane.update(plane_params)
    redirect_to plane_path(@plane), notice: 'Airliner was successfully updated!'
  end

  def destroy
    @plane = Plane.find(params[:id])
    @plane.destroy
    redirect_to planes_path, notice: 'Airliner was successfully deleted!'
  end

  private
  def plane_params
    params.require(:plane).permit(:name, :manufactor, :range, :engines,
      :aircraft_type, :passengers)
  end
end
