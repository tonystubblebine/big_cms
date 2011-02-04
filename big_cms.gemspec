# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{big_cms}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Stubblebine"]
  s.date = %q{2011-02-04}
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
    "app/views/big_cms/cms_files/_form.html.erb",
    "app/views/big_cms/cms_files/edit.html.erb",
    "app/views/big_cms/cms_files/index.html.erb",
    "app/views/big_cms/cms_files/new.html.erb",
    "app/views/big_cms/cms_files/show.html.erb",
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
    "app/views/big_cms/pages/_form.html.erb",
    "app/views/big_cms/pages/edit.html.erb",
    "app/views/big_cms/pages/index.html.erb",
    "app/views/big_cms/pages/new.html.erb",
    "app/views/big_cms/pages/show.css.erb",
    "app/views/big_cms/pages/show.html.erb",
    "app/views/layouts/big_cms.html.erb",
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
    "lib/generators/big_cms/templates/assets/stylesheets/big_cms_admin.css",
    "lib/generators/big_cms/templates/big_cms_initializer.rb",
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
  s.test_files = [
    "test/rails_root/app/controllers/application_controller.rb",
    "test/rails_root/app/helpers/application_helper.rb",
    "test/rails_root/app/models/user.rb",
    "test/rails_root/config/application.rb",
    "test/rails_root/config/boot.rb",
    "test/rails_root/config/environment.rb",
    "test/rails_root/config/environments/development.rb",
    "test/rails_root/config/environments/production.rb",
    "test/rails_root/config/environments/test.rb",
    "test/rails_root/config/initializers/backtrace_silencers.rb",
    "test/rails_root/config/initializers/big_auth.rb",
    "test/rails_root/config/initializers/big_cms.rb",
    "test/rails_root/config/initializers/inflections.rb",
    "test/rails_root/config/initializers/mime_types.rb",
    "test/rails_root/config/initializers/secret_token.rb",
    "test/rails_root/config/initializers/session_store.rb",
    "test/rails_root/config/routes.rb",
    "test/rails_root/db/migrate/20101125054346_create_content_managers.rb",
    "test/rails_root/db/migrate/20101125054348_create_pages.rb",
    "test/rails_root/db/migrate/20101125054350_create_navigations.rb",
    "test/rails_root/db/migrate/20101125054352_create_components.rb",
    "test/rails_root/db/migrate/20101125054354_create_cms_files.rb",
    "test/rails_root/db/migrate/20101125195736_add_versioning_to_pages.rb",
    "test/rails_root/db/migrate/20101125195738_add_versioning_to_components.rb",
    "test/rails_root/db/migrate/20101128230245_create_big_auth_tables.rb",
    "test/rails_root/db/migrate/20110109055322_create_layouts.rb",
    "test/rails_root/db/schema.rb",
    "test/rails_root/db/seeds.rb",
    "test/rails_root/test/functional/cms_files_controller_test.rb",
    "test/rails_root/test/functional/components_controller_test.rb",
    "test/rails_root/test/functional/content_managers_controller_test.rb",
    "test/rails_root/test/functional/layouts_controller_test.rb",
    "test/rails_root/test/functional/navigations_controller_test.rb",
    "test/rails_root/test/functional/page_versions_controller_test.rb",
    "test/rails_root/test/functional/pages_controller_test.rb",
    "test/rails_root/test/performance/browsing_test.rb",
    "test/rails_root/test/test_helper.rb",
    "test/rails_root/test/unit/big_cms/layout_test.rb",
    "test/rails_root/test/unit/cms_file_test.rb",
    "test/rails_root/test/unit/component_test.rb",
    "test/rails_root/test/unit/content_manager_test.rb",
    "test/rails_root/test/unit/helpers/big_cms/layouts_helper_test.rb",
    "test/rails_root/test/unit/helpers/big_cms/page_versions_helper_test.rb",
    "test/rails_root/test/unit/helpers/cms_files_helper_test.rb",
    "test/rails_root/test/unit/helpers/components_helper_test.rb",
    "test/rails_root/test/unit/helpers/content_managers_helper_test.rb",
    "test/rails_root/test/unit/helpers/navigations_helper_test.rb",
    "test/rails_root/test/unit/helpers/pages_helper_test.rb",
    "test/rails_root/test/unit/navigation_test.rb",
    "test/rails_root/test/unit/page_test.rb",
    "test/test_helper.rb"
  ]

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
    else
      s.add_dependency(%q<rails>, ["> 3.0.0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<acts_as_versioned>, [">= 0"])
      s.add_dependency(%q<paperclip>, [">= 0"])
      s.add_dependency(%q<liquid>, [">= 0"])
      s.add_dependency(%q<aws-s3>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["> 3.0.0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<acts_as_versioned>, [">= 0"])
    s.add_dependency(%q<paperclip>, [">= 0"])
    s.add_dependency(%q<liquid>, [">= 0"])
    s.add_dependency(%q<aws-s3>, [">= 0"])
  end
end

