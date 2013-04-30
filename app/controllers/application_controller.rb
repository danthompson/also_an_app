class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    id = User.pluck(:id).sample

    @current_user ||= User.find(id)
  end
  helper_method :current_user
end
