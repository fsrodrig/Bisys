class TerminalEntriesController < ApplicationController
  before_action :set_terminal_entry, only: [:show, :edit, :update, :destroy]

  # GET /terminal_entries
  # GET /terminal_entries.json
  def index
    @terminal_entries = TerminalEntry.all
  end

  # GET /terminal_entries/1
  # GET /terminal_entries/1.json
  def show
  end

  # GET /terminal_entries/new
  def new
    @terminal_entry = TerminalEntry.new
  end

  # GET /terminal_entries/1/edit
  def edit
  end

  # POST /terminal_entries
  # POST /terminal_entries.json
  def create
    @terminal_entry = TerminalEntry.new(terminal_entry_params)

    respond_to do |format|
      if @terminal_entry.save
        format.html { redirect_to @terminal_entry, notice: 'Terminal entry was successfully created.' }
        format.json { render :show, status: :created, location: @terminal_entry }
      else
        format.html { render :new }
        format.json { render json: @terminal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminal_entries/1
  # PATCH/PUT /terminal_entries/1.json
  def update
    respond_to do |format|
      if @terminal_entry.update(terminal_entry_params)
        format.html { redirect_to @terminal_entry, notice: 'Terminal entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @terminal_entry }
      else
        format.html { render :edit }
        format.json { render json: @terminal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminal_entries/1
  # DELETE /terminal_entries/1.json
  def destroy
    @terminal_entry.destroy
    respond_to do |format|
      format.html { redirect_to terminal_entries_url, notice: 'Terminal entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal_entry
      @terminal_entry = TerminalEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminal_entry_params
      params.require(:terminal_entry).permit(:station)
    end
end
