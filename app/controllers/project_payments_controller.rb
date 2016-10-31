class ProjectPaymentsController < ApplicationController
  before_action :set_project_payment, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:new, :edit, :create, :update]

  # GET /project_payments
  # GET /project_payments.json
  def index
    @project_payments = ProjectPayment.all
  end

  # GET /project_payments/1
  # GET /project_payments/1.json
  def show
  end

  # GET /project_payments/new
  def new
    #@project_payment = ProjectPayment.new
    @project_payment = @project.project_payments.build
  end

  # GET /project_payments/1/edit
  def edit
  end

  # POST /project_payments
  # POST /project_payments.json
  def create
    #@project_payment = ProjectPayment.new(project_payment_params)
    @project_payment = @project.project_payments.build(project_payment_params)
    @project_payment.user_id = current_user.id

    respond_to do |format|
      if @project_payment.save
        format.html { redirect_to @project, notice: 'Project payment was successfully created.' }
        format.json { render :show, status: :created, location: @project_payment }
      else
        format.html { render :new }
        format.json { render json: @project_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_payments/1
  # PATCH/PUT /project_payments/1.json
  def update
    respond_to do |format|
      if @project_payment.update(project_payment_params)
        format.html { redirect_to @project, notice: 'Project payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_payment }
      else
        format.html { render :edit }
        format.json { render json: @project_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_payments/1
  # DELETE /project_payments/1.json
  def destroy
    @project_payment.destroy
    respond_to do |format|
      format.html { redirect_to project_payments_url, notice: 'Project payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_payment
      @project_payment = ProjectPayment.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_payment_params
      params.require(:project_payment).permit(:project_id, :payment, :description, :user_id)
    end
end
