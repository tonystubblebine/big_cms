module BigCms
class ContentManagersController < ApplicationController
  unloadable
  layout "big_cms"

  # GET /big_cms/content_managers
  # GET /big_cms/content_managers.xml
  def index
    @content_managers = BigCms::ContentManager.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @content_managers }
    end
  end

  # GET /big_cms/content_managers/1
  # GET /big_cms/content_managers/1.xml
  def show
    if params[:id].eql?("current")
      @content_manager = current_cms
    else
      @content_manager = BigCms::ContentManager.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @content_manager }
    end
  end

  # GET /big_cms/content_managers/new
  # GET /big_cms/content_managers/new.xml
  def new
    @content_manager = BigCms::ContentManager.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @content_manager }
    end
  end

  # GET /big_cms/content_managers/1/edit
  def edit
    @content_manager = BigCms::ContentManager.find(params[:id])
  end

  # POST /big_cms/content_managers
  # POST /big_cms/content_managers.xml
  def create
    @content_manager = BigCms::ContentManager.new(params[:content_manager])

    respond_to do |format|
      if @content_manager.save
        format.html { redirect_to(@content_manager, :notice => 'Content manager was successfully created.') }
        format.xml  { render :xml => @content_manager, :status => :created, :location => @content_manager }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @content_manager.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /big_cms/content_managers/1
  # PUT /big_cms/content_managers/1.xml
  def update
    @content_manager = BigCms::ContentManager.find(params[:id])

    respond_to do |format|
      if @content_manager.update_attributes(params[:content_manager])
        format.html { redirect_to(@content_manager, :notice => 'Content manager was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @content_manager.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /big_cms/content_managers/1
  # DELETE /big_cms/content_managers/1.xml
  def destroy
    @content_manager = BigCms::ContentManager.find(params[:id])
    @content_manager.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_content_managers_url) }
      format.xml  { head :ok }
    end
  end
end
end
