class ContentManagersController < ApplicationController
  # GET /content_managers
  # GET /content_managers.xml
  def index
    @content_managers = ContentManager.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @content_managers }
    end
  end

  # GET /content_managers/1
  # GET /content_managers/1.xml
  def show
    @content_manager = ContentManager.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @content_manager }
    end
  end

  # GET /content_managers/new
  # GET /content_managers/new.xml
  def new
    @content_manager = ContentManager.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @content_manager }
    end
  end

  # GET /content_managers/1/edit
  def edit
    @content_manager = ContentManager.find(params[:id])
  end

  # POST /content_managers
  # POST /content_managers.xml
  def create
    @content_manager = ContentManager.new(params[:content_manager])

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

  # PUT /content_managers/1
  # PUT /content_managers/1.xml
  def update
    @content_manager = ContentManager.find(params[:id])

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

  # DELETE /content_managers/1
  # DELETE /content_managers/1.xml
  def destroy
    @content_manager = ContentManager.find(params[:id])
    @content_manager.destroy

    respond_to do |format|
      format.html { redirect_to(content_managers_url) }
      format.xml  { head :ok }
    end
  end
end
