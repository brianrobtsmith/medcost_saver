class OfferingsController < ApplicationController

  def index
    @offerings = Offering.all
  end

  def show
    @offering = Offering.find_by(id: params[:id])
  end

  def new
  end

  def create
    @offering = Offering.new
    @offering.procedure_id = params[:procedure_id]
    @offering.company_id = params[:company_id]
    @offering.exam_price = params[:exam_price]
    @offering.test_price = params[:test_price]
    @offering.total_price = params[:total_price]

    if @offering.save
      redirect_to offerings_url, notice: "Offering created successfully."
    else
      render 'new'
    end
  end

  def edit
    @offering = Offering.find_by(id: params[:id])
  end

  def update
    @offering = Offering.find_by(id: params[:id])
    @offering.procedure_id = params[:procedure_id]
    @offering.company_id = params[:company_id]
    @offering.exam_price = params[:exam_price]
    @offering.test_price = params[:test_price]
    @offering.total_price = params[:total_price]

    if @offering.save
      redirect_to offerings_url, notice: "Offering updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @offering = Offering.find_by(id: params[:id])
    @offering.destroy

    redirect_to offerings_url, notice: "Offering deleted."
  end
end
