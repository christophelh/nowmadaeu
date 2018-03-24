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



  def update
    if @job.update(job_params)
      redirect_to @job, notice: 'Job was successfully updated.'
    else
      render :edit
    end
  end


  def show
    @job  = Job.find(params[:id])
  end


  def destroy
    @job.destroy
    redirect_to jobs_url, notice: 'job was successfully destroyed.'
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :company, :desc, :url, :contact, :category)
  end
end

