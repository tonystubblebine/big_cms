class BigCms::PagesController < BigCmsController
  unloadable

  before_filter :require_user, :except => :show

  # GET /big_cms/pages
  # GET /big_cms/pages.xml
  def index
    @pages = current_cms.pages.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pages }
    end
  end

  # GET /big_cms/pages/1
  # GET /big_cms/pages/1.xml
  def show
    if params[:id] == "_home" and !current_cms.navigations.empty?
      @page = current_cms.navigations.first.pages.order(:created_at).first
    elsif params[:id] == "_home" and current_cms.pages and @page = current_cms.pages.find_by_title("index")
      # no op. @page is set.
    elsif params[:id] == "_home" and current_cms.pages
      @page = current_cms.pages.order(:created_at).first
    elsif params[:id].match(/\D/)
      # TODO: 2011-01-11 <tony+bigcms@tonystubblebine.com> -- this hacked finder implies that I should be storing slug.
      @page = current_cms.pages.to_a.find{|a| a.slug == params[:id]}
    else
      @page = current_cms.pages.find(params[:id])
    end

    render(:status => 403, :text => "Not allowed.") unless current_user or @page.allow_public_views?

    respond_to do |format|
      format.html do 
        return render :text => render_liquid(current_layout.content, 'content_for_layout' => render_liquid(@page.content))
      end
      format.xml  { render :xml => @page }
      format.css { render :layout => false }
    end
  end

  # GET /big_cms/pages/new
  # GET /big_cms/pages/new.xml
  def new
    @page = current_cms.pages.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /big_cms/pages/1/edit
  def edit
    if params[:id].match(/\D/)
      # TODO: 2011-01-11 <tony+bigcms@tonystubblebine.com> -- this hacked finder implies that I should be storing slug.
      @page = current_cms.pages.to_a.find{|a| a.slug == params[:id]}
    else
      @page = current_cms.pages.find(params[:id])
    end
  end

  # POST /big_cms/pages
  # POST /big_cms/pages.xml
  def create
    @page = current_cms.pages.new(params[:big_cms_page])
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
    @page = current_cms.pages.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:big_cms_page])
        format.html { render :action => "edit" }
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
    @page = current_cms.pages.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_pages_url) }
      format.xml  { head :ok }
    end
  end

end
