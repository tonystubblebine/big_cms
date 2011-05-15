class BigCms::CmsFilesController < BigCmsController
  unloadable
  
  before_filter :unimplemented_error, :except => [:new, :create, :show, :index, :destroy]
  #before_filter :require_user, :except => :show

  # TODO: 2011-03-18 <tony+bigcms@tonsytubblebine.com> -- Trying to fix plupload weirdness. This should go away ASAP.
#  protect_from_forgery :except => [:create] 
  skip_before_filter :verify_authenticity_token, :only => [:create]

  # GET /big_cms/cms_files
  # GET /big_cms/cms_files.xml
  def index
    @cms_files = current_cms.files.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cms_files }
    end
  end

  # GET /big_cms/cms_files/1
  # GET /big_cms/cms_files/1.xml
  def show
    @cms_file = current_cms.files.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cms_file }
    end
  end

  # GET /big_cms/cms_files/new
  # GET /big_cms/cms_files/new.xml
  def new
    @cms_file = current_cms.files.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cms_file }
    end
  end

  # GET /big_cms/cms_files/1/edit
  def edit
    @cms_file = current_cms.files.find(params[:id])
  end

  # POST /big_cms/cms_files
  # POST /big_cms/cms_files.xml
  # TODO: 2011-05-14 <tony@crowdvine.com> -- Because this will return either a cms_file or a page, it's not very restful.
  def create
    if params[:big_cms_cms_file]
      @cms_file = current_cms.files.new(params[:big_cms_cms_file]) 
    else
      @cms_file = current_cms.files.new()
      @cms_file.file = params[:file]
    end

    if md = @cms_file.file.filename.match(/(.+).(htm|html|css|js)$/i)
      @page = current_cms.pages.new(:title => md[1], :content => @cms_file.file.read)
      @page.content_type = (md[2] == "htm") ? "html" : md[2]
    end
      
    respond_to do |format|
      if @page and @page.save
        format.html { redirect_to(@cms_file, :notice => 'File uploaded and converted to and editable page.') }
        format.xml  { render :xml => @page, :status => :created, :location => @page }
      elsif @cms_file.save
        format.html { redirect_to(@cms_file, :notice => 'File was successfully created.') }
        format.xml  { render :xml => @cms_file, :status => :created, :location => @cms_file }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cms_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /big_cms/cms_files/1
  # PUT /big_cms/cms_files/1.xml
  def update
    @cms_file = current_cms.files.find(params[:id])

    respond_to do |format|
      if @cms_file.update_attributes(params[:big_cms_cms_file])
        format.html { redirect_to(@cms_file, :notice => 'File was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cms_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /big_cms/cms_files/1
  # DELETE /big_cms/cms_files/1.xml
  def destroy
    @cms_file = current_cms.files.find(params[:id])
    @cms_file.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_cms_files_url) }
      format.xml  { head :ok }
    end
  end
end
