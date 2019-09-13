class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @project = Project.find(params[:project_id])
    @tasks = @project.tasks
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @task = @project.tasks.build
  end

  def edit
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.build(task_params)
    if @task.save
      redirect_to project_path(@project)
    else
      flash[:notice] = "Error"
      render "new"
    end
  end

  def update
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find_by(params[:id])
    @task.destroy
    redirect_to project_path(@project)
  end

  private

  def task_params
    params.require(:task).permit(:name, :status, :project_id)
  end
end
