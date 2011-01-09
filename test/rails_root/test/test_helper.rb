ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'big_auth/test_helper'
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all
  set_fixture_class :cms_files        => "BigCms::CmsFile"
  set_fixture_class :components       => "BigCms::Component"
  set_fixture_class :pages            => "BigCms::Page"
  set_fixture_class :content_managers => "BigCms::ContentManager"
  set_fixture_class :navigations      => "BigCms::Navigation"
  set_fixture_class :layouts          => "BigCms::Layout"

  # Add more helper methods to be used by all tests here...
end
