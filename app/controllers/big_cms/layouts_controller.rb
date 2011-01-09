class BigCms::LayoutsController < BigCmsController
  unloadable
  before_filter :set_content_manager
  before_filter :require_user
  before_filter :unimplemented_error, :except => [:index, :new, :create]


  # GET /big_cms/layouts
  # GET /big_cms/layouts.xml
  def index
    @layouts = @content_manager.layouts

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @layouts }
    end
  end

  # GET /big_cms/layouts/1
  # GET /big_cms/layouts/1.xml
  def show
    @layout = @content_manager.layouts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @layout }
    end
  end

  # GET /big_cms/layouts/new
  # GET /big_cms/layouts/new.xml
  def new
    @layout = @content_manager.layouts.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @layout }
    end
  end

  # GET /big_cms/layouts/1/edit
  def edit
    @layout = @content_manager.layouts.find(params[:id])
  end

  # POST /big_cms/layouts
  # POST /big_cms/layouts.xml
  def create
    @layout = @content_manager.layouts.new(params[:big_cms_layout])

    respond_to do |format|
      if @layout.save
        format.html { redirect_to(@layout, :notice => 'Layout was successfully created.') }
        format.xml  { render :xml => @layout, :status => :created, :location => @layout }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @layout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /big_cms/layouts/1
  # PUT /big_cms/layouts/1.xml
  def update
    @layout = @content_manager.layouts.find(params[:id])

    respond_to do |format|
      if @layout.update_attributes(params[:big_cms_layout])
        format.html { redirect_to(@layout, :notice => 'Layout was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @layout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /big_cms/layouts/1
  # DELETE /big_cms/layouts/1.xml
  def destroy
    @layout = @content_manager.layouts.find(params[:id])
    @layout.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_layouts_url) }
      format.xml  { head :ok }
    end
  end
end
