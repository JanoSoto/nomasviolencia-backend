class NationalComplaintsController < ApplicationController
  before_action :set_national_complaint, only: [:show, :edit, :update, :destroy]

  # GET /national_complaints
  # GET /national_complaints.json
  def index
    @national_complaints = NationalComplaint.all
  end

  # GET /national_complaints/1
  # GET /national_complaints/1.json
  def show
  end

  # GET /national_complaints/new
  def new
    @national_complaint = NationalComplaint.new
  end

  # GET /national_complaints/1/edit
  def edit
  end

  # POST /national_complaints
  # POST /national_complaints.json
  def create
    @national_complaint = NationalComplaint.new(national_complaint_params)

    respond_to do |format|
      if @national_complaint.save
        format.html { redirect_to @national_complaint, notice: 'National complaint was successfully created.' }
        format.json { render :show, status: :created, location: @national_complaint }
      else
        format.html { render :new }
        format.json { render json: @national_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /national_complaints/1
  # PATCH/PUT /national_complaints/1.json
  def update
    respond_to do |format|
      if @national_complaint.update(national_complaint_params)
        format.html { redirect_to @national_complaint, notice: 'National complaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @national_complaint }
      else
        format.html { render :edit }
        format.json { render json: @national_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /national_complaints/1
  # DELETE /national_complaints/1.json
  def destroy
    @national_complaint.destroy
    respond_to do |format|
      format.html { redirect_to national_complaints_url, notice: 'National complaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_national_complaint
      @national_complaint = NationalComplaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def national_complaint_params
      params.require(:national_complaint).permit(:institution, :web_page, :phone_number)
    end
end
