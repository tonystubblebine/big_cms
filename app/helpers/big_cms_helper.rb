module BigCmsHelper
  def foo(a="b")
    "foobar"
  end
 
  def snippit(name, *args)
    controller = @context.registers["controller"]
    component = controller.current_cms.components.find_by_name(name)
    opts = {"component" => component} 
    opts["current_site"] = controller.current_site if controller.current_site
    opts["current_layout"] = controller.current_layout if controller.current_layout
    opts["current_user"] = controller.current_user if controller.current_user
    opts["current_navigation"] = controller.current_cms.navigations if controller.current_cms


    args.each_with_index do |arg, i|
      opts["param#{(i+1).to_s}"] = arg
    end

    template = Liquid::Template.parse(component.content)
    template.render(opts, :filters => BigCms.service_configs[:liquid].filters, :registers => {"controller" => controller}).html_safe
  end

  def navigation_selected(slug)
    controller = @context.registers["controller"]
    if slug_nav = controller.current_cms.all_navigations.find{|a| a.slug == slug}
      if current_nav = controller.current_cms.all_navigations.find{|a| a.url == controller.request.path }
         return "selected" if slug_nav.ancestors_and_self.include?(current_nav)
      end
    end
    "" 
  end 
end

