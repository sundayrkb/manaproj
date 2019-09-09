class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    @users= User.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @projects = Project.find(params[:id])
  end

  # GET /projects/new
  def new
    @project = Project.new
    @teams = Team.all
    @users = User.all
    # @current_user = current_user
  end

  # GET /projects/1/edit
  def edit
    @teams = Team.all
    @users = User.all
  end


  # POST /projects
  # POST /projects.json
  def create

    @teams = Team.all
    @users = User.all
    @project = current_user.projects.build(project_params)
    puts "-------------------"
    puts @project.inspect
    @teams = Team.all

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @teams = Team.all
    @users = User.all
    puts "=========================update"
    puts project_params.inspect
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      puts "================pp======================"
      puts current_user.inspect
      puts "================ppp======================"
      #params.fetch(:project, {})
      params.require(:project).permit(:title, :name, :description, :team_id, :status, user_ids:[])
      #params.require(:project).permit(:title, :name, :description, :team_id, :user_id)
    end
end
