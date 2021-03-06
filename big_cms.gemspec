# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{big_cms}
  s.version = "0.0.35"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Stubblebine"]
  s.date = %q{2011-05-24}
  s.email = %q{tony+bigcms@tonystubblebine.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc",
    "TODO"
  ]
  s.files = [
    "app/controllers/big_cms/cms_files_controller.rb",
    "app/controllers/big_cms/components_controller.rb",
    "app/controllers/big_cms/content_managers_controller.rb",
    "app/controllers/big_cms/layouts_controller.rb",
    "app/controllers/big_cms/navigations_controller.rb",
    "app/controllers/big_cms/page_versions_controller.rb",
    "app/controllers/big_cms/pages_controller.rb",
    "app/controllers/big_cms_controller.rb",
    "app/helpers/big_cms/layouts_helper.rb",
    "app/helpers/big_cms/page_versions_helper.rb",
    "app/helpers/big_cms_helper.rb",
    "app/helpers/cms_files_helper.rb",
    "app/helpers/components_helper.rb",
    "app/helpers/content_managers_helper.rb",
    "app/helpers/navigations_helper.rb",
    "app/helpers/pages_helper.rb",
    "app/models/big_cms/cms_file.rb",
    "app/models/big_cms/component.rb",
    "app/models/big_cms/content_manager.rb",
    "app/models/big_cms/layout.rb",
    "app/models/big_cms/navigation.rb",
    "app/models/big_cms/page.rb",
    "app/uploaders/cms_file_uploader.rb",
    "app/views/big_cms/cms_files/_admin_nav_listing.html.erb",
    "app/views/big_cms/cms_files/_form.html.erb",
    "app/views/big_cms/cms_files/edit.html.erb",
    "app/views/big_cms/cms_files/index.html.erb",
    "app/views/big_cms/cms_files/new.html.erb",
    "app/views/big_cms/cms_files/show.html.erb",
    "app/views/big_cms/components/_admin_nav_listing.html.erb",
    "app/views/big_cms/components/_form.html.erb",
    "app/views/big_cms/components/edit.html.erb",
    "app/views/big_cms/components/index.html.erb",
    "app/views/big_cms/components/new.html.erb",
    "app/views/big_cms/components/show.html.erb",
    "app/views/big_cms/content_managers/_form.html.erb",
    "app/views/big_cms/content_managers/edit.html.erb",
    "app/views/big_cms/content_managers/index.html.erb",
    "app/views/big_cms/content_managers/new.html.erb",
    "app/views/big_cms/content_managers/show.html.erb",
    "app/views/big_cms/layouts/_admin_nav_listing.html.erb",
    "app/views/big_cms/layouts/_form.html.erb",
    "app/views/big_cms/layouts/edit.html.erb",
    "app/views/big_cms/layouts/index.html.erb",
    "app/views/big_cms/layouts/new.html.erb",
    "app/views/big_cms/layouts/show.html.erb",
    "app/views/big_cms/navigations/_form.html.erb",
    "app/views/big_cms/navigations/edit.html.erb",
    "app/views/big_cms/navigations/index.html.erb",
    "app/views/big_cms/navigations/new.html.erb",
    "app/views/big_cms/navigations/show.html.erb",
    "app/views/big_cms/page_versions/_form.html.erb",
    "app/views/big_cms/page_versions/_history.html.erb",
    "app/views/big_cms/page_versions/edit.html.erb",
    "app/views/big_cms/page_versions/index.html.erb",
    "app/views/big_cms/page_versions/new.html.erb",
    "app/views/big_cms/page_versions/show.html.erb",
    "app/views/big_cms/pages/_admin_nav_listing.html.erb",
    "app/views/big_cms/pages/_form.html.erb",
    "app/views/big_cms/pages/edit.html.erb",
    "app/views/big_cms/pages/index.html.erb",
    "app/views/big_cms/pages/new.html.erb",
    "app/views/big_cms/pages/show.css.erb",
    "app/views/big_cms/pages/show.html.erb",
    "app/views/layouts/_big_admin_header.erb",
    "app/views/layouts/_big_admin_nav_listing.html.erb",
    "app/views/layouts/_big_cms.html.erb",
    "config/application.rb",
    "config/boot.rb",
    "config/database.yml",
    "config/environment.rb",
    "config/environments/development.rb",
    "config/environments/production.rb",
    "config/environments/test.rb",
    "config/initializers.old/backtrace_silencers.rb",
    "config/initializers.old/inflections.rb",
    "config/initializers.old/mime_types.rb",
    "config/initializers.old/secret_token.rb",
    "config/initializers.old/session_store.rb",
    "config/locales/en.yml",
    "config/routes.rb",
    "lib/big_cms.rb",
    "lib/big_cms/action_controller_ext.rb",
    "lib/big_cms/engine.rb",
    "lib/big_cms/railties/tasks.rake",
    "lib/big_cms/service_config.rb",
    "lib/generators/big_cms/big_cms_generator.rb",
    "lib/generators/big_cms/templates/add_versioning_to_components_migration.rb",
    "lib/generators/big_cms/templates/add_versioning_to_pages_migration.rb",
    "lib/generators/big_cms/templates/assets/javascripts/ace/LICENSE",
    "lib/generators/big_cms/templates/assets/javascripts/ace/ace-uncompressed.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/ace.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/cockpit-uncompressed.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/cockpit.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/keybinding-emacs.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/keybinding-vim.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-c_cpp.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-coffee.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-csharp.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-css.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-html.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-java.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-javascript.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-perl.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-php.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-python.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-ruby.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-svg.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/mode-xml.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-clouds.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-clouds_midnight.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-cobalt.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-dawn.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-eclipse.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-idle_fingers.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-kr_theme.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-merbivore.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-merbivore_soft.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-mono_industrial.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-monokai.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-pastel_on_dark.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-twilight.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/theme-vibrant_ink.js",
    "lib/generators/big_cms/templates/assets/javascripts/ace/worker-javascript.js",
    "lib/generators/big_cms/templates/assets/javascripts/jquery.wysiwyg.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/gears_init.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/jquery.plupload.queue.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/jquery.ui.plupload.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.browserplus.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.flash.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.flash.swf",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.full.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.gears.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.html4.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.html5.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.silverlight.min.js",
    "lib/generators/big_cms/templates/assets/javascripts/plupload/plupload.silverlight.xap",
    "lib/generators/big_cms/templates/assets/javascripts/rails.js",
    "lib/generators/big_cms/templates/assets/javascripts/wysiwyg.link.js",
    "lib/generators/big_cms/templates/assets/jquery.wysiwyg.bg.png",
    "lib/generators/big_cms/templates/assets/jquery.wysiwyg.gif",
    "lib/generators/big_cms/templates/assets/stylesheets/big_cms_admin.css",
    "lib/generators/big_cms/templates/assets/stylesheets/jquery.ui.plupload.css",
    "lib/generators/big_cms/templates/assets/stylesheets/jquery.wysiwyg.css",
    "lib/generators/big_cms/templates/big_cms_initializer.rb",
    "lib/generators/big_cms/templates/condense_to_single_content_field_migration.rb",
    "lib/generators/big_cms/templates/create_cms_files_migration.rb",
    "lib/generators/big_cms/templates/create_components_migration.rb",
    "lib/generators/big_cms/templates/create_content_managers_migration.rb",
    "lib/generators/big_cms/templates/create_layouts_migration.rb",
    "lib/generators/big_cms/templates/create_navigations_migration.rb",
    "lib/generators/big_cms/templates/create_pages_migration.rb",
    "lib/generators/big_cms/templates/s3.yml"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Rails engine for handling content management.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["> 3.0.0"])
      s.add_runtime_dependency(%q<jeweler>, [">= 0"])
      s.add_runtime_dependency(%q<acts_as_versioned>, [">= 0"])
      s.add_runtime_dependency(%q<paperclip>, [">= 0"])
      s.add_runtime_dependency(%q<liquid>, [">= 0"])
      s.add_runtime_dependency(%q<aws-s3>, [">= 0"])
      s.add_runtime_dependency(%q<mini_magick>, [">= 0"])
      s.add_runtime_dependency(%q<carrierwave>, [">= 0"])
      s.add_runtime_dependency(%q<fog>, [">= 0"])
      s.add_runtime_dependency(%q<big_library>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["> 3.0.0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<acts_as_versioned>, [">= 0"])
      s.add_dependency(%q<paperclip>, [">= 0"])
      s.add_dependency(%q<liquid>, [">= 0"])
      s.add_dependency(%q<aws-s3>, [">= 0"])
      s.add_dependency(%q<mini_magick>, [">= 0"])
      s.add_dependency(%q<carrierwave>, [">= 0"])
      s.add_dependency(%q<fog>, [">= 0"])
      s.add_dependency(%q<big_library>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["> 3.0.0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<acts_as_versioned>, [">= 0"])
    s.add_dependency(%q<paperclip>, [">= 0"])
    s.add_dependency(%q<liquid>, [">= 0"])
    s.add_dependency(%q<aws-s3>, [">= 0"])
    s.add_dependency(%q<mini_magick>, [">= 0"])
    s.add_dependency(%q<carrierwave>, [">= 0"])
    s.add_dependency(%q<fog>, [">= 0"])
    s.add_dependency(%q<big_library>, [">= 0"])
  end
end

