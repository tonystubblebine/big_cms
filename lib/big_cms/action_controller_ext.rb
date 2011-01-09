ActionController::Base.class_eval do
  helper_method :current_cms, :current_layout

  protected
  def current_cms
    @current_cms ||= BigCms::ContentManager.first
  end

  def current_layout
    @current_layout ||= current_cms.layouts.first || nil
  end
end
