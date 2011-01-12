ActionController::Base.class_eval do
  helper_method :current_cms, :current_layout

  protected
  def current_cms
    # TODO: 2011-01-11 <tony+bigcms@tonystubblebine.com> -- This is a cheap
    # default. The order by claus is there for testing. Sometimes the fixtures
    # come back in non-id order.
    @current_cms ||= BigCms::ContentManager.find(:first, :order => "id")
  end

  def current_layout
    @current_layout ||= current_cms.layouts.first || nil
  end
end
