class CmsFilesController < ApplicationController
  unloadable
  # GET /cms_files
  # GET /cms_files.xml
  def index
    @cms_files = CmsFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cms_files }
    end
  end

  # GET /cms_files/1
  # GET /cms_files/1.xml
  def show
    @cms_file = CmsFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cms_file }
    end
  end

  # GET /cms_files/new
  # GET /cms_files/new.xml
  def new
    @cms_file = CmsFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cms_file }
    end
  end

  # GET /cms_files/1/edit
  def edit
    @cms_file = CmsFile.find(params[:id])
  end

  # POST /cms_files
  # POST /cms_files.xml
  def create
    @cms_file = CmsFile.new(params[:cms_file])

    respond_to do |format|
      if @cms_file.save
        format.html { redirect_to(@cms_file, :notice => 'Cms file was successfully created.') }
        format.xml  { render :xml => @cms_file, :status => :created, :location => @cms_file }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cms_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cms_files/1
  # PUT /cms_files/1.xml
  def update
    @cms_file = CmsFile.find(params[:id])

    respond_to do |format|
      if @cms_file.update_attributes(params[:cms_file])
        format.html { redirect_to(@cms_file, :notice => 'Cms file was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cms_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cms_files/1
  # DELETE /cms_files/1.xml
  def destroy
    @cms_file = CmsFile.find(params[:id])
    @cms_file.destroy

    respond_to do |format|
      format.html { redirect_to(cms_files_url) }
      format.xml  { head :ok }
    end
  end
end
