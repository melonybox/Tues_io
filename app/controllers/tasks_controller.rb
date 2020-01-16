class TasksController < ApplicationController

    def index
    end

    def new
        @task = Task.new
        @previous_url = request.referrer.split('/')[4].to_i
    end

    def create
        @task = Task.create(task_params)
        if @task.valid?
            redirect_to project_path(task_params[:project_id])
        else
            render :new
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_to project_path(task_params[:project_id])
        else
            render :edit
        end

    end

    def destroy
        @return_project = Task.find(params[:id])
        Task.destroy(params[:id])
        redirect_to project_path(@return_project.project_id)
    end


    private

    def task_params
        params.require(:task).permit(:description, :complete, :user_id, :project_id)
    end
end
