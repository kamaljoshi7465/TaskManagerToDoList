class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]

  def index
    @tasks = Task.all
  
    if params[:sort] == "due_date"
      @tasks = @tasks.order(due_date: :asc)
    elsif params[:sort] == "priority"
      @tasks = @tasks.order(priority: :desc)
    else
      @tasks = @tasks.order(created_at: :desc)
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "Task created successfully!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Task updated successfully!"
    else
      render :edit
    end
  end

  def update_status
    @task = Task.find(params[:id])
    if @task.update(status: params[:task][:status])
      redirect_to tasks_path, notice: "Task status updated successfully!"
    else
      redirect_to tasks_path, alert: "Failed to update task status."
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "Task deleted successfully!"
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :priority, :due_date, :status)
  end
end
