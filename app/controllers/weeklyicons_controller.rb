class WeeklyiconsController < ApplicationController
  before_action :set_weeklyicon, only: [:show, :edit, :update, :destroy]

  # GET /weeklyicons
  # GET /weeklyicons.json
  def index
    @weeklyicons = Weeklyicon.all
  end

  # GET /weeklyicons/1
  # GET /weeklyicons/1.json
  def show
  end

  # GET /weeklyicons/new
  def new
    @weeklyicon = Weeklyicon.new
  end

  # GET /weeklyicons/1/edit
  def edit
  end

  # POST /weeklyicons
  # POST /weeklyicons.json
  def create
    @weeklyicon = Weeklyicon.new(weeklyicon_params)

    respond_to do |format|
      if @weeklyicon.save
        format.html { redirect_to @weeklyicon, notice: 'Weeklyicon was successfully created.' }
        format.json { render :show, status: :created, location: @weeklyicon }
      else
        format.html { render :new }
        format.json { render json: @weeklyicon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weeklyicons/1
  # PATCH/PUT /weeklyicons/1.json
  def update
    respond_to do |format|
      if @weeklyicon.update(weeklyicon_params)
        format.html { redirect_to @weeklyicon, notice: 'Weeklyicon was successfully updated.' }
        format.json { render :show, status: :ok, location: @weeklyicon }
      else
        format.html { render :edit }
        format.json { render json: @weeklyicon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weeklyicons/1
  # DELETE /weeklyicons/1.json
  def destroy
    @weeklyicon.destroy
    respond_to do |format|
      format.html { redirect_to weeklyicons_url, notice: 'Weeklyicon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weeklyicon
      @weeklyicon = Weeklyicon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weeklyicon_params
      params.require(:weeklyicon).permit(:user_id, :weekly_expenses)
    end
end
