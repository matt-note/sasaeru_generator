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
    respond_to do |format|
      format.html
      format.pdf { send_pdf(@sasaeru) }
      # format.png { send_png(@sasaeru) }
    end
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
      params.require(:sasaeru).permit(:top_text, :title, :sub_title, :author, :base_color, :lead, :sub_lead_1, :sub_lead_2, :sub_lead_3, :sub_lead_4, :bottom_text, :publisher)
    end

    def send_pdf(sasaeru)
      send_data(generate_sasaeru_theme(sasaeru),
                filename: "sasaeru.pdf",
                type: "application/pdf",
                disposition: "attachment")
    end

    # def send_png(sasaeru)
    #   pdf = MiniMagick::Image.open(send_pdf(sasaeru))
    #
    #   MiniMagick::Tool::Convert.new do |convert|
    #     convert << pdf.pages.first.path
    #     convert << "png:8sasaeru.png"
    #     png = convert
    #   end
    #
    #   send_data(png,
    #             filename: "sasaeru.png",
    #             type: "image/png",
    #             disposition: "attachment")
    # end

    def generate_sasaeru_theme(sasaeru)
      file = File.join(Rails.root, "app", "assets", "reports", "sasaeru.tlf")
      report = Thinreports::Report.new layout: file

      report.start_new_page

      report.page.item(:top_text).value(sasaeru.top_text)
      report.page.item(:title).value(sasaeru.title)
      report.page.item(:sub_title).value(sasaeru.sub_title)
      report.page.item(:sub_title_background).style(:fill_color, sasaeru.base_color)

      report.page.item(:author).value(sasaeru.author)

      report.page.item(:lead).value(sasaeru.lead)
      report.page.item(:lead).style(:color, sasaeru.base_color)
      report.page.item(:sub_lead_1).value(sasaeru.sub_lead_1)
      report.page.item(:sub_lead_2).value(sasaeru.sub_lead_2)
      report.page.item(:sub_lead_3).value(sasaeru.sub_lead_3)
      report.page.item(:sub_lead_4).value(sasaeru.sub_lead_4)

      report.page.item(:bottom_text).value(sasaeru.bottom_text)
      report.page.item(:publisher).value(sasaeru.publisher)

      report.generate
    end
end
