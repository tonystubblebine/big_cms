class BigCms::ComponentsController < BigCmsController
  unloadable
  layout "big_cms", :except => :show

  before_filter :require_user
  before_filter :unimplemented_error

  # GET /big_cms/components
  # GET /big_cms/components.xml
  def index
    @components = current_cms.components.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @components }
    end
  end

  # GET /big_cms/components/1
  # GET /big_cms/components/1.xml
  def show
    @component = current_cms.components.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @component }
    end
  end

  # GET /big_cms/components/new
  # GET /big_cms/components/new.xml
  def new
    @component = current_cms.components.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @component }
    end
  end

  # GET /big_cms/components/1/edit
  def edit
    @component = current_cms.components.find(params[:id])
  end

  # POST /big_cms/components
  # POST /big_cms/components.xml
  def create
    @component = current_cms.components.new(params[:big_cms_component])

    respond_to do |format|
      if @component.save
        format.html { redirect_to(@component, :notice => 'Component was successfully created.') }
        format.xml  { render :xml => @component, :status => :created, :location => @component }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @component.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /big_cms/components/1
  # PUT /big_cms/components/1.xml
  def update
    @component = current_cms.components.find(params[:id])

    respond_to do |format|
      if @component.update_attributes(params[:big_cms_component])
        format.html { redirect_to(@component, :notice => 'Component was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @component.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /big_cms/components/1
  # DELETE /big_cms/components/1.xml
  def destroy
    @component = current_cms.components.find(params[:id])
    @component.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_components_url) }
      format.xml  { head :ok }
    end
  end
end
