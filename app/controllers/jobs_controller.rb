# frozen_string_literal: true

class JobsController < ApplicationController
  attr_accessor :slug
  before_action :set_job, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @jobs = Job.all.order('created_at DESC')
    @user = current_user
    @meta_title = meta_title 'Portal de empleo remoto y recursos en español'
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
    @job = Job.friendly.find(params[:id])
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
    @job  = Job.friendly.find(params[:id])
    @user = current_user
    @meta_title = meta_title "Trabajo remoto #{@job.category} en español"
  end

  def destroy
    @job = Job.friendly.find(params[:id])
    @job.destroy
    redirect_to root_path, notice: 'job was successfully destroyed.'
  end

  private

  def set_job
    @job = Job.friendly.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :company, :desc, :url, :contact,
                                :category, :photo, :photo_cache, :slug)
  end
end
