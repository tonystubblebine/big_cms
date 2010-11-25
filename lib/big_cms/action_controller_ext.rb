ActionController::Base.class_eval do
  helper_method :current_cms

  protected
  def current_cms
    @current_cms ||= BigCms::ContentManager.first
  end
end
