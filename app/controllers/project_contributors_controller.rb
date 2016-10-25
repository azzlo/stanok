class ProjectContributorsController < ApplicationController
  before_action :set_project_contributor, only: [:show, :edit, :update, :destroy]

  # GET /project_contributors
  # GET /project_contributors.json
  def index
    @project_contributors = ProjectContributor.all
  end

  # GET /project_contributors/1
  # GET /project_contributors/1.json
  def show
  end

  # GET /project_contributors/new
  def new
    @project_contributor = ProjectContributor.new
  end

  # GET /project_contributors/1/edit
  def edit
  end

  # POST /project_contributors
  # POST /project_contributors.json
  def create
    @project_contributor = ProjectContributor.new(project_contributor_params)

    respond_to do |format|
      if @project_contributor.save
        format.html { redirect_to @project_contributor, notice: 'Project contributor was successfully created.' }
        format.json { render :show, status: :created, location: @project_contributor }
      else
        format.html { render :new }
        format.json { render json: @project_contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_contributors/1
  # PATCH/PUT /project_contributors/1.json
  def update
    respond_to do |format|
      if @project_contributor.update(project_contributor_params)
        format.html { redirect_to @project_contributor, notice: 'Project contributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_contributor }
      else
        format.html { render :edit }
        format.json { render json: @project_contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_contributors/1
  # DELETE /project_contributors/1.json
  def destroy
    @project_contributor.destroy
    respond_to do |format|
      format.html { redirect_to project_contributors_url, notice: 'Project contributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_contributor
      @project_contributor = ProjectContributor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_contributor_params
      params.require(:project_contributor).permit(:project_id, :contributor_id, :percentage)
    end
end
