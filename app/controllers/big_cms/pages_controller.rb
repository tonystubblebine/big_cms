class BigCms::PagesController < BigCmsController
  unloadable
  layout "big_cms", :except => :show

  before_filter :set_content_manager
  before_filter :require_user, :except => :show

  # GET /big_cms/pages
  # GET /big_cms/pages.xml
  def index
    @pages = @content_manager.pages.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pages }
    end
  end

  # GET /big_cms/pages/1
  # GET /big_cms/pages/1.xml
  def show
    if params[:id] == "_home" and @content_manager.navigations
      @page = @content_manager.navigations.first.pages.first
    elsif params[:id] == "_home" and @content_manager.pages
      @page = @content_manager.pages.first
    elsif params[:id].match(/\D/)
      # TODO: 2011-01-11 <tony+bigcs@tonystubblebine.com> -- this hacked finder implies that I should be storing slug.
      @page = @content_manager.pages.to_a.find{|a| a.slug == params[:id]}
    else
      @page = @content_manager.pages.find(params[:id])
    end

    render(:status => 403, :text => "Not allowed.") unless current_user or @page.allow_public_views?

    respond_to do |format|
      format.html { render(:layout => BigCms.service_configs[:layouts].pages_show) }
      format.xml  { render :xml => @page }
      format.css { render :layout => false }
    end
  end

  # GET /big_cms/pages/new
  # GET /big_cms/pages/new.xml
  def new
    @page = @content_manager.pages.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /big_cms/pages/1/edit
  def edit
    @page = @content_manager.pages.find(params[:id])
  end

  # POST /big_cms/pages
  # POST /big_cms/pages.xml
  def create
    @page = @content_manager.pages.new(params[:big_cms_page])
    respond_to do |format|
      if @page.save
        format.html { redirect_to(@page, :notice => 'Page was successfully created.') }
        format.xml  { render :xml => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /big_cms/pages/1
  # PUT /big_cms/pages/1.xml
  def update
    @page = @content_manager.pages.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:big_cms_page])
        format.html { redirect_to(@page, :notice => 'Page was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /big_cms/pages/1
  # DELETE /big_cms/pages/1.xml
  def destroy
    @page = @content_manager.pages.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_pages_url) }
      format.xml  { head :ok }
    end
  end

end
