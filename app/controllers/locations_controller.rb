class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by(id: params[:id])
  end

  def new
  end

  def create
    @location = Location.new
    @location.company_id = params[:company_id]
    @location.address1 = params[:address1]
    @location.address2 = params[:address2]
    @location.city = params[:city]
    @location.state = params[:state]
    @location.zip = params[:zip]

    if @location.save
      redirect_to locations_url, notice: "Location created successfully."
    else
      render 'new'
    end
  end

  def edit
    @location = Location.find_by(id: params[:id])
  end

  def update
    @location = Location.find_by(id: params[:id])
    @location.company_id = params[:company_id]
    @location.address1 = params[:address1]
    @location.address2 = params[:address2]
    @location.city = params[:city]
    @location.state = params[:state]
    @location.zip = params[:zip]

    if @location.save
      redirect_to locations_url, notice: "Location updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find_by(id: params[:id])
    @location.destroy

    redirect_to locations_url, notice: "Location deleted."
  end
end
