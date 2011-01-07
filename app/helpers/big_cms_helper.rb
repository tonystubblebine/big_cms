module BigCmsHelper
  def render_liquid(page)
    opts = { :page => page}
    opts[:current_site => current_site] if defined?(current_site)
    opts[:current_user => current_user] if defined?(current_user)

    template = Liquid::Template.parse(page.content)
    template.render(opts)
  end
end

