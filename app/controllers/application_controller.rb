class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  # include Pundit

  # # Pundit: white-list approach.
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
end

  BRAND_NAME = 'Nowmada'.freeze

def meta_title(title)
    [title, BRAND_NAME].reject(&:empty?).join(' | ')
end


  #   def skip_pundit?
  #   devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  # end
end
