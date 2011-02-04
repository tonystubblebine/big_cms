ActionController::Base.class_eval do
  helper_method :current_cms, :current_layout, :snippet, :navigation_selected, :render_liquid

  def current_cms
    # TODO: 2011-01-11 <tony+bigcms@tonystubblebine.com> -- This is a cheap
    # default. The order by clause is there for testing. Sometimes the fixtures
    # come back in non-id order.
    @current_cms ||= ((defined?(current_site) and current_site.content_manager) || (BigCms::ContentManager.find(:first, :order => "id")))
  end

  def current_layout
    @current_layout ||= current_cms.layouts.first || nil
  end

    
  def render_liquid(content)
    opts = {} 
    opts["page"] = @page if defined?(@page)
    opts["current_site"] = current_site if defined?(current_site)
    opts["current_layout"] = current_layout if defined?(current_layout)
    opts["current_user"] = current_user if defined?(current_user)
    opts["current_navigation"] = current_cms.navigations if defined?(current_cms)

    template = Liquid::Template.parse(content)
    template.render(opts, :filters => BigCms.service_configs[:liquid].filters, :registers => {"controller" => self}).html_safe
  end

end
