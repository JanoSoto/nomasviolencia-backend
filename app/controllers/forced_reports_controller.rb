class ForcedReportsController < ApplicationController
  before_action :set_forced_report, only: [:show, :edit, :update, :destroy]

  # GET /forced_reports
  # GET /forced_reports.json
  def index
    @forced_report = ForcedReport.find(1)
  end

  # GET /forced_reports/1
  # GET /forced_reports/1.json
  def show
  end

  # GET /forced_reports/new
  def new
    @forced_report = ForcedReport.new
  end

  # GET /forced_reports/1/edit
  def edit
  end

  # POST /forced_reports
  # POST /forced_reports.json
  def create
    @forced_report = ForcedReport.new(forced_report_params)

    respond_to do |format|
      if @forced_report.save
        format.html { redirect_to @forced_report, notice: 'Forced report was successfully created.' }
        format.json { render :show, status: :created, location: @forced_report }
      else
        format.html { render :new }
        format.json { render json: @forced_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forced_reports/1
  # PATCH/PUT /forced_reports/1.json
  def update
    respond_to do |format|
      if @forced_report.update(forced_report_params)
        format.html { redirect_to forced_reports_url, notice: 'Sección "Están obligados a denunciar" modificada exitosamente.' }
        format.json { render :show, status: :ok, location: @forced_report }
      else
        format.html { render :edit }
        format.json { render json: @forced_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forced_reports/1
  # DELETE /forced_reports/1.json
  def destroy
    @forced_report.destroy
    respond_to do |format|
      format.html { redirect_to forced_reports_url, notice: 'Forced report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forced_report
      @forced_report = ForcedReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forced_report_params
      params.require(:forced_report).permit(:content)
    end
end
