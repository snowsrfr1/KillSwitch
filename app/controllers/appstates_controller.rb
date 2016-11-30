class AppstatesController < ApplicationController
  before_action :set_appstate, only: [:show, :edit, :update, :destroy]

  # GET /appstates
  # GET /appstates.json
  def index
    @appstates = Appstate.all
  end

  # GET /appstates/1
  # GET /appstates/1.json
  def show
  end

  # GET /appstates/new
  def new
    @appstate = Appstate.new
  end

  # GET /appstates/1/edit
  def edit
  end

  # POST /appstates
  # POST /appstates.json
  def create
    @appstate = Appstate.new(appstate_params)

    respond_to do |format|
      if @appstate.save
        format.html { redirect_to @appstate, notice: 'Appstate was successfully created.' }
        format.json { render :show, status: :created, location: @appstate }
      else
        format.html { render :new }
        format.json { render json: @appstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appstates/1
  # PATCH/PUT /appstates/1.json
  def update
    respond_to do |format|
      if @appstate.update(appstate_params)
        format.html { redirect_to @appstate, notice: 'Appstate was successfully updated.' }
        format.json { render :show, status: :ok, location: @appstate }
      else
        format.html { render :edit }
        format.json { render json: @appstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appstates/1
  # DELETE /appstates/1.json
  def destroy
    @appstate.destroy
    respond_to do |format|
      format.html { redirect_to appstates_url, notice: 'Appstate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appstate
      @appstate = Appstate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appstate_params
      params.require(:appstate).permit(:description)
    end
end
