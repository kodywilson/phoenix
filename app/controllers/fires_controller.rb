class FiresController < ApplicationController
  before_action :set_fire, only: [:show, :edit, :update, :destroy]

  # GET /fires
  # GET /fires.json
  def index
    @fires = Fire.all
  end

  # GET /fires/1
  # GET /fires/1.json
  def show
  end

  # GET /fires/new
  def new
    @fire = Fire.new
  end

  # GET /fires/1/edit
  def edit
  end

  # POST /fires
  # POST /fires.json
  def create
    @fire = Fire.new(fire_params)

    respond_to do |format|
      if @fire.save
        format.html { redirect_to @fire, notice: 'Fire was successfully created.' }
        format.json { render :show, status: :created, location: @fire }
      else
        format.html { render :new }
        format.json { render json: @fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fires/1
  # PATCH/PUT /fires/1.json
  def update
    respond_to do |format|
      if @fire.update(fire_params)
        format.html { redirect_to @fire, notice: 'Fire was successfully updated.' }
        format.json { render :show, status: :ok, location: @fire }
      else
        format.html { render :edit }
        format.json { render json: @fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fires/1
  # DELETE /fires/1.json
  def destroy
    @fire.destroy
    respond_to do |format|
      format.html { redirect_to fires_url, notice: 'Fire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fire
      @fire = Fire.find(params[:id])
      @comments = @fire.comments.all
      @comment = @fire.comments.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fire_params
      params.require(:fire).permit(:name, :incident, :description, :owner, :status, :root_cause_analysis)
    end
end
