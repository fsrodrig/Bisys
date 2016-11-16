class ReserveStatesController < ApplicationController
  before_action :set_reserve_state, only: [:show, :edit, :update, :destroy]

  # GET /reserve_states
  # GET /reserve_states.json
  def index
    @reserve_states = ReserveState.all
  end

  # GET /reserve_states/1
  # GET /reserve_states/1.json
  def show
  end

  # GET /reserve_states/new
  def new
    @reserve_state = ReserveState.new
  end

  # GET /reserve_states/1/edit
  def edit
  end

  # POST /reserve_states
  # POST /reserve_states.json
  def create
    @reserve_state = ReserveState.new(reserve_state_params)

    respond_to do |format|
      if @reserve_state.save
        format.html { redirect_to @reserve_state, notice: 'Reserve state was successfully created.' }
        format.json { render :show, status: :created, location: @reserve_state }
      else
        format.html { render :new }
        format.json { render json: @reserve_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserve_states/1
  # PATCH/PUT /reserve_states/1.json
  def update
    respond_to do |format|
      if @reserve_state.update(reserve_state_params)
        format.html { redirect_to @reserve_state, notice: 'Reserve state was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserve_state }
      else
        format.html { render :edit }
        format.json { render json: @reserve_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserve_states/1
  # DELETE /reserve_states/1.json
  def destroy
    @reserve_state.destroy
    respond_to do |format|
      format.html { redirect_to reserve_states_url, notice: 'Reserve state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserve_state
      @reserve_state = ReserveState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserve_state_params
      params.require(:reserve_state).permit(:reserve_state)
    end
end
