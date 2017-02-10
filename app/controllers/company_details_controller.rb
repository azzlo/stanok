class CompanyDetailsController < ApplicationController
  before_action :set_company_detail, only: [:edit, :update]

  # GET /company_details
  # GET /company_details.json
  def index
    @company_detail = CompanyDetail.first
  end

  # GET /company_details/1/edit
  def edit
  end

  # POST /company_details
  # POST /company_details.json
  def create
    @company_detail = CompanyDetail.new(company_detail_params)

    respond_to do |format|
      if @company_detail.save
        format.html { redirect_to company_details_path, notice: 'Company detail was successfully created.' }
        format.json { render :show, status: :created, location: @company_detail }
      else
        format.html { render :new }
        format.json { render json: @company_details.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_details/1
  # PATCH/PUT /company_details/1.json
  def update
    respond_to do |format|
      if @company_detail.update(company_detail_params)
        format.html { redirect_to company_details_path, notice: 'Company detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_detail }
      else
        format.html { render :edit }
        format.json { render json: @company_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_detail
      @company_detail = CompanyDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_detail_params
      params.require(:company_detail).permit(:name, :address, :logo, :phone, :description)
    end
end
