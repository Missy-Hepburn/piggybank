class MonthlyiconsController < ApplicationController
  before_action :set_monthlyicon, only: [:show, :edit, :update, :destroy]

  # GET /monthlyicons
  # GET /monthlyicons.json
  def index
    @monthlyicons = Monthlyicon.all
  end

  # GET /monthlyicons/1
  # GET /monthlyicons/1.json
  def show
  end

  # GET /monthlyicons/new
  def new
    @monthlyicon = Monthlyicon.new
  end

  # GET /monthlyicons/1/edit
  def edit
  end

  # POST /monthlyicons
  # POST /monthlyicons.json
  def create
    @monthlyicon = Monthlyicon.new(monthlyicon_params)

    respond_to do |format|
      if @monthlyicon.save
        format.html { redirect_to @monthlyicon, notice: 'Monthlyicon was successfully created.' }
        format.json { render :show, status: :created, location: @monthlyicon }
      else
        format.html { render :new }
        format.json { render json: @monthlyicon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monthlyicons/1
  # PATCH/PUT /monthlyicons/1.json
  def update
    respond_to do |format|
      if @monthlyicon.update(monthlyicon_params)
        format.html { redirect_to @monthlyicon, notice: 'Monthlyicon was successfully updated.' }
        format.json { render :show, status: :ok, location: @monthlyicon }
      else
        format.html { render :edit }
        format.json { render json: @monthlyicon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthlyicons/1
  # DELETE /monthlyicons/1.json
  def destroy
    @monthlyicon.destroy
    respond_to do |format|
      format.html { redirect_to monthlyicons_url, notice: 'Monthlyicon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monthlyicon
      @monthlyicon = Monthlyicon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monthlyicon_params
      params.require(:monthlyicon).permit(:user_id, :monthly_expenses)
    end
end
