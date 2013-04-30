module ApplicationHelper
  def current_user
    id = User.pluck(:id).sample

    @current_user ||= User.find(id)
  end
end
