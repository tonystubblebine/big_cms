class BigCmsController < ApplicationController
  protected

  def set_content_manager
    @content_manager = params[:content_manager_id] ? ContentManager.find(params[:content_manager_id]) : current_cms
  end

  def unimplemented_error
    # Turn off things that aren't ready for production use, but still allow the tests to poke at them.
    unless ENV["RAILS_ENV"]
      render(:status => 404, :text => "This page does not exist.")
    end
  end
end
