class TasksController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @tasks = @list.tasks.new(task_params)
    if @task.save
      flash[:notice] = "Task successfully added!"
      redirect_to list_path(@task.list)
    else
      render :new
    end

  end

private
  def task_params
    params.require(:task).permit(:description)
  end

end
