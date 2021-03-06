class Api::V1::TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all
    task_json = TaskSerializer.new(@tasks).serialized_json
    render json: task_json
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
    task_json = TaskSerializer.new(@task).serialized_json
    render json: task_json

  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:type, :price, :userid, :professionalid)
    end
end
