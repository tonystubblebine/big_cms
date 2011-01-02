class BigCms::CmsFilesController < BigCmsController
  unloadable
  layout "big_cms"
  
  before_filter :unimplemented_error, :except => [:new, :create, :show, :index, :destroy]
  before_filter :set_content_manager
  before_filter :require_user, :except => :show

  # GET /big_cms/cms_files
  # GET /big_cms/cms_files.xml
  def index
    @cms_files = @content_manager.files.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cms_files }
    end
  end

  # GET /big_cms/cms_files/1
  # GET /big_cms/cms_files/1.xml
  def show
    @cms_file = @content_manager.files.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cms_file }
    end
  end

  # GET /big_cms/cms_files/new
  # GET /big_cms/cms_files/new.xml
  def new
    @cms_file = @content_manager.files.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cms_file }
    end
  end

  # GET /big_cms/cms_files/1/edit
  def edit
    @cms_file = @content_manager.files.find(params[:id])
  end

  # POST /big_cms/cms_files
  # POST /big_cms/cms_files.xml
  def create
    @cms_file = @content_manager.files.new(params[:big_cms_cms_file])

    respond_to do |format|
      if @cms_file.save
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
    @cms_file = @content_manager.files.find(params[:id])

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
    @cms_file = @content_manager.files.find(params[:id])
    @cms_file.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_cms_files_url) }
      format.xml  { head :ok }
    end
  end
end
