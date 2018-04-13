class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[trabajo]

  def workshop
  end

  def trabajo
  end
end


