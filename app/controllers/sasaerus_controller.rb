class SasaerusController < ApplicationController
  before_action :set_sasaeru, only: [:show, :edit, :update, :destroy]

  # GET /sasaerus
  # GET /sasaerus.json
  def index
    @sasaerus = Sasaeru.all
  end

  # GET /sasaerus/1
  # GET /sasaerus/1.json
  def show
  end

  # GET /sasaerus/new
  def new
    @sasaeru = Sasaeru.new
  end

  # GET /sasaerus/1/edit
  def edit
  end

  # POST /sasaerus
  # POST /sasaerus.json
  def create
    @sasaeru = Sasaeru.new(sasaeru_params)

    respond_to do |format|
      if @sasaeru.save
        format.html { redirect_to @sasaeru, notice: 'Sasaeru was successfully created.' }
        format.json { render :show, status: :created, location: @sasaeru }
      else
        format.html { render :new }
        format.json { render json: @sasaeru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sasaerus/1
  # PATCH/PUT /sasaerus/1.json
  def update
    respond_to do |format|
      if @sasaeru.update(sasaeru_params)
        format.html { redirect_to @sasaeru, notice: 'Sasaeru was successfully updated.' }
        format.json { render :show, status: :ok, location: @sasaeru }
      else
        format.html { render :edit }
        format.json { render json: @sasaeru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sasaerus/1
  # DELETE /sasaerus/1.json
  def destroy
    @sasaeru.destroy
    respond_to do |format|
      format.html { redirect_to sasaerus_url, notice: 'Sasaeru was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sasaeru
      @sasaeru = Sasaeru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sasaeru_params
      params.require(:sasaeru).permit(:top_text, :title, :sub_title, :author, :base_color, :lead, :sub_lead_1, :sub_lead_2, :sub_lead_3, :sub_lead_4, :bottom_text)
    end
end
