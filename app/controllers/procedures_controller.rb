class ProceduresController < ApplicationController

  def index
    @procedures = Procedure.all.order("name")
  end

  def search
    query = params[:procedure_name]
    p = Procedure.find_by(name: query)

    if p != nil
      # redirect_to "http://localhost:3000/procedures/#{p.id}"
      redirect_to procedure_url(p.id)
    else
      redirect_to procedures_url, notice: "Procedure not found."
    end

    # Find procedure using form data
    # If it exists, redirect to the show page
    # Else, redirect back to index with message

  end

  def show
    @procedure = Procedure.find_by(id: params[:id])

  end

  def new
  end

  def create
    @procedure = Procedure.new
    @procedure.name = params[:name]
    @procedure.category_id = params[:category_id]

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
    @procedure.category_id = params[:category_id]

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
