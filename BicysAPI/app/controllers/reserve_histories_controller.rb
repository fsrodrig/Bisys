class ReserveHistoriesController < ApplicationController
  before_action :set_reserve_history, only: [:show, :edit, :update, :destroy]

  # GET /reserve_histories
  # GET /reserve_histories.json
  def index
    @reserve_histories = ReserveHistory.all
  end

  # GET /reserve_histories/1
  # GET /reserve_histories/1.json
  def show
  end

  # GET /reserve_histories/new
  def new
    @reserve_history = ReserveHistory.new
  end

  # GET /reserve_histories/1/edit
  def edit
  end

  # POST /reserve_histories
  # POST /reserve_histories.json
  def create
    @reserve_history = ReserveHistory.new(reserve_history_params)

    respond_to do |format|
      if @reserve_history.save
        format.html { redirect_to @reserve_history, notice: 'Reserve history was successfully created.' }
        format.json { render :show, status: :created, location: @reserve_history }
      else
        format.html { render :new }
        format.json { render json: @reserve_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserve_histories/1
  # PATCH/PUT /reserve_histories/1.json
  def update
    respond_to do |format|
      if @reserve_history.update(reserve_history_params)
        format.html { redirect_to @reserve_history, notice: 'Reserve history was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserve_history }
      else
        format.html { render :edit }
        format.json { render json: @reserve_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserve_histories/1
  # DELETE /reserve_histories/1.json
  def destroy
    @reserve_history.destroy
    respond_to do |format|
      format.html { redirect_to reserve_histories_url, notice: 'Reserve history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserve_history
      @reserve_history = ReserveHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserve_history_params
      params.require(:reserve_history).permit(:initial_date, :final_date, :reserve_state_id, :id_reserve_id)
    end
end
