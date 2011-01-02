class BigCmsController < ApplicationController
  protected

  def set_content_manager
    @content_manager = params[:content_manager_id] ? ContentManager.find(params[:content_manager_id]) : current_cms
  end

  # TODO: 2011-01-01 <tony@crowdvine.com> -- Two things here. One, isn't that
  # check supposed to be == "test." Two, can this be moved into a shared library
  # that all the big_* engines use?
  def unimplemented_error
    # Turn off things that aren't ready for production use, but still allow the tests to poke at them.
    unless ENV["RAILS_ENV"]
      render(:status => 404, :text => "This page does not exist.")
    end
  end
end
