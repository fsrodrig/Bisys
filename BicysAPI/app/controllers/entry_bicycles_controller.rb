class EntryBicyclesController < ApplicationController
  before_action :set_entry_bicycle, only: [:show, :edit, :update, :destroy]

  # GET /entry_bicycles
  # GET /entry_bicycles.json
  def index
    @entry_bicycles = EntryBicycle.all
  end

  # GET /entry_bicycles/1
  # GET /entry_bicycles/1.json
  def show
  end

  # GET /entry_bicycles/new
  def new
    @entry_bicycle = EntryBicycle.new
  end

  # GET /entry_bicycles/1/edit
  def edit
  end

  # POST /entry_bicycles
  # POST /entry_bicycles.json
  def create
    @entry_bicycle = EntryBicycle.new(entry_bicycle_params)

    respond_to do |format|
      if @entry_bicycle.save
        format.html { redirect_to @entry_bicycle, notice: 'Entry bicycle was successfully created.' }
        format.json { render :show, status: :created, location: @entry_bicycle }
      else
        format.html { render :new }
        format.json { render json: @entry_bicycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_bicycles/1
  # PATCH/PUT /entry_bicycles/1.json
  def update
    respond_to do |format|
      if @entry_bicycle.update(entry_bicycle_params)
        format.html { redirect_to @entry_bicycle, notice: 'Entry bicycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry_bicycle }
      else
        format.html { render :edit }
        format.json { render json: @entry_bicycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_bicycles/1
  # DELETE /entry_bicycles/1.json
  def destroy
    @entry_bicycle.destroy
    respond_to do |format|
      format.html { redirect_to entry_bicycles_url, notice: 'Entry bicycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_bicycle
      @entry_bicycle = EntryBicycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_bicycle_params
      params.require(:entry_bicycle).permit(:in_date, :out_date, :bicycle_id_id, :entry_id_id)
    end
end
