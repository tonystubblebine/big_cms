module BigCmsHelper
  def foo(a="b")
    "foobar"
  end

  def snippit(name, *args)
    component = @context.registers["controller"].current_cms.components.find_by_name(name)
    opts = {"component" => component} 

    args.each_with_index do |arg, i|
      opts["param#{(i+1).to_s}"] = arg
    end

    template = Liquid::Template.parse(component.content)
    template.render(opts, :filters => BigCms.service_configs[:liquid].filters, :registers => {"controller" => @controller}).html_safe
  end

  def render_liquid(content)
    opts = {} 
    opts["page"] = @page if defined?(@page)
    opts["current_site"] = current_site if defined?(current_site)
    opts["current_layout"] = current_layout if defined?(current_layout)
    opts["current_user"] = current_user if defined?(current_user)

    template = Liquid::Template.parse(content)
    template.render(opts, :filters => BigCms.service_configs[:liquid].filters, :registers => {"controller" => @controller}).html_safe
  end
end

