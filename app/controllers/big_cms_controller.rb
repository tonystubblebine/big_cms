class BigCmsController < ApplicationController
  protected

  def set_content_manager
    @content_manager = params[:content_manager_id] ? ContentManager.find(params[:content_manager_id]) : current_cms
  end
end
