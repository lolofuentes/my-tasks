class TasksController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
    
    def index
        @task = Task.all
    end

    def new
        @restaurant = Restaurant.new # needed to instantiate the form_for
    end

    def create
    #   @task = Task.new(params[:task]).save
        @task = Task.create(params[:task]).save
        redirect_to tasks_path
    end
 
    def edit
    # @task = Task.find(params[:id])
    end

    def show
    # @task = Task.find(params[:id])
    end

    def update
    # @task = Task.find(params[:id])
        @task.update(params[:task])
        # Will raise ActiveModel::ForbiddenAttributesError
        redirect_to task_path(@task)
    end

    def destroy
    # @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path
        # no need for app/views/task/destroy.html.erb
    end

    private

    def params_tasks
        params.require(:task)permit(:tittle :details :completed)
    end 

    def set_restaurant
        @task = Task.find(params[:id])
    end
end