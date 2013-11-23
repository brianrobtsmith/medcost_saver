class ProceduresController < ApplicationController

  def index
    @procedures = Procedure.all
  end

  def show
    @procedure = Procedure.find_by(id: params[:id])
    @offering = Offering.where(procedure_id: params[:id])
  end

  def new
  end

  def create
    @procedure = Procedure.new
    @procedure.name = params[:name]
    @procedure.category = params[:category]

    if @procedure.save
      redirect_to procedures_url, notice: "Procedure created successfully."
    else
      render 'new'
    end
  end

  def edit
    @procedure = Procedure.find_by(id: params[:id])
  end

  def update
    @procedure = Procedure.find_by(id: params[:id])
    @procedure.name = params[:name]
    @procedure.category = params[:category]

    if @procedure.save
      redirect_to procedures_url, notice: "Procedure updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @procedure = Procedure.find_by(id: params[:id])
    @procedure.destroy

    redirect_to procedures_url, notice: "Procedure deleted."
  end
end
