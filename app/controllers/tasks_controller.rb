class TaskController < ApplicationController
end

def index
    @restaurants = Restaurant.all
end

def show
    @task = Task.find(params[:id])
end

def new
    @task = Task.new # needed to instantiate the form_for
end

def create
    @task = Task.new(params[:task])
    @task.save
end

def edit
    @task = Task.find(params[:id])
end

def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
    # Will raise ActiveModel::ForbiddenAttributesError
end

def destroy
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/task/destroy.html.erb
    redirect_to restaurants_path
end

