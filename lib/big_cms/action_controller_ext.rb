ActionController::Base.class_eval do
  helper_method :current_cms

  protected
  def current_cms
    @current_cms ||= ContentManager.first
  end
end
