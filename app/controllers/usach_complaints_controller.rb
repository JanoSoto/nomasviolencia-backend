class UsachComplaintsController < ApplicationController
  before_action :set_usach_complaint, only: [:show, :edit, :update, :destroy]

  # GET /usach_complaint
  # GET /usach_complaint.json
  def index
    @usach_complaint = UsachComplaint.first
  end

  # GET /usach_complaint/1
  # GET /usach_complaint/1.json
  def show
  end

  # GET /usach_complaint/new
  def new
    @usach_complaint = UsachComplaint.new
  end

  # GET /usach_complaint/1/edit
  def edit
  end

  # POST /usach_complaint
  # POST /usach_complaint.json
  def create
    @usach_complaint = UsachComplaint.new(usach_complaint_params)

    respond_to do |format|
      if @usach_complaint.save
        format.html { redirect_to @usach_complaint, notice: 'Usach compaint was successfully created.' }
        format.json { render :show, status: :created, location: @usach_complaint }
      else
        format.html { render :new }
        format.json { render json: @usach_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usach_complaint/1
  # PATCH/PUT /usach_complaint/1.json
  def update
    respond_to do |format|
      if @usach_complaint.update(usach_complaint_params)
        format.html { redirect_to @usach_complaint, notice: 'Usach compaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @usach_complaint }
      else
        format.html { render :edit }
        format.json { render json: @usach_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usach_complaint/1
  # DELETE /usach_complaint/1.json
  def destroy
    @usach_complaint.destroy
    respond_to do |format|
      format.html { redirect_to usach_complaint_url, notice: 'Usach compaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usach_complaint
      @usach_complaint = UsachComplaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usach_complaint_params
      params.require(:usach_complaint).permit(:content)
    end
end
