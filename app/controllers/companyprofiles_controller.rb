class CompanyprofilesController < ApplicationController
  def index
    @jobs = Job.all
  end
end
