class JobsController < ApplicationController

  before_action :set_job, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @jobs = Job.all
    @user = current_user
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end



  def update
     @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to @job, notice: 'Job was successfully updated.'
    else
      render :edit
    end
  end


  def show
    @job  = Job.find(params[:id])
    @user = current_user
  end


  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to root_path, notice: 'job was successfully destroyed.'
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :company, :desc, :url, :contact, :category , :photo , :photo_cache)
  end
end

