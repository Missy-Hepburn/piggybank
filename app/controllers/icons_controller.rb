class IconsController < ApplicationController
  before_action :set_icon, only: [:show, :edit, :copy, :update, :destroy]

  # GET /icons
  # GET /icons.json
 def index 
    @usersicons=Icon.where(:user_id =>current_user.id)
    @userstransactions=Transaction.where(:user_id =>current_user.id) 
    @usersweeklyicons=Weeklyicon.where(:user_id =>current_user.id)
  end
  
  # GET /icons/1
  # GET /icons/1.json
  def show
    @transaction = Transaction.new
  end
  

  # GET /icons/new
  def new
    @icon = Icon.new
  end

  # GET /icons/1/edit
  def edit
  end
  
  # POST /icons
  # POST /icons.json
  def create
    @icon = Icon.new(icon_params)

    respond_to do |format|
      if @icon.save
        format.html { redirect_to @icon, notice: 'New expense successfully added.' }
        format.json { render :show, status: :created, location: @icon }
      else
        format.html { render :new }
        format.json { render json: @icon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icons/1
  # PATCH/PUT /icons/1.json
  def update
    respond_to do |format|
      if @icon.update(icon_params)
        format.html { redirect_to @icon, notice: 'Thank you! See your expenses summary below:' }
        format.json { render :show, status: :ok, location: @icon }
      else
        format.html { render :edit }
        format.json { render json: @icon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icons/1
  # DELETE /icons/1.json
  def destroy
    @icon.destroy
    respond_to do |format|
      format.html { redirect_to icons_url, notice: 'Icon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icon
      @icon = Icon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icon_params
      params.require(:icon).permit(:title, :price, :user_id, :image)
    end
end
