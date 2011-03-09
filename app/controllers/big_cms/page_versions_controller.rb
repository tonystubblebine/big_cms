class BigCms::PageVersionsController < BigCmsController
  unloadable
  before_filter :set_page
  before_filter :require_user
  before_filter :unimplemented_error, :except => :create

  # GET /big_cms/pages/1/versions
  # GET /big_cms/pages/1/versions.xml
  def index
    @versions = @page.versions

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @versions }
    end
  end

  # GET /big_cms/pages/1/versions/1
  # GET /big_cms/pages/1/versions/1.xml
  def show
    @version = @page.versions.find_by_version(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @version }
    end
  end

  # GET /big_cms/pages/1/versions/new
  # GET /big_cms/pages/1/versions/new.xml
  def new
    @version = @page.versions.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @version }
    end
  end

  # GET /big_cms/pages/1/versions/1/edit
  def edit
    @version = @page.versions.find_by_version(params[:id])
  end

  # POST /big_cms/pages/1/versions?revert_to=1
  # POST /big_cms/page/1/versions.xml?revert_to=1
  def create
    @version = @page.versions.find_by_version(params[:revert_to])

    respond_to do |format|
      if @page.revert!(@version)
        format.html { redirect_to(edit_big_cms_page_path(@page), :notice => 'Reverted to version ##{@version.version}') }
        format.xml  { render :xml => @version.page, :status => :created, :location => @version.page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /big_cms/pages/versions/1
  # PUT /big_cms/pages/versions/1.xml
  def update
    @version = @page.versions.find_by_version(params[:id])

    respond_to do |format|
      if @version.update_attributes(params[:big_cms_page_version])
        format.html { redirect_to(@version, :notice => 'Page version was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /big_cms/pages/1/versions/1
  # DELETE /big_cms/pages/1/versions/1.xml
  def destroy
    @version = @page.versions.find_by_version(params[:id])
    @version.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_page_versions_url) }
      format.xml  { head :ok }
    end
  end

  protected
  
  def set_page
    @page = current_cms.pages.find(params[:page_id])
  end
end
