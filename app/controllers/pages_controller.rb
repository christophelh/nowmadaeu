class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[trabajo workshop]

  def workshop
  end

  def trabajo
  end
end


