class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :foo

  def foo
#    debugger
  end
end
