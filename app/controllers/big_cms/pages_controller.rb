module BigCms
class PagesController < ApplicationController
  unloadable
  layout "big_cms", :except => :show
  # GET /big_cms/pages
  # GET /big_cms/pages.xml
  def index
    @pages = BigCms::Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pages }
    end
  end

  # GET /big_cms/pages/1
  # GET /big_cms/pages/1.xml
  def show
    @page = BigCms::Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /big_cms/pages/new
  # GET /big_cms/pages/new.xml
  def new
    @page = BigCms::Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /big_cms/pages/1/edit
  def edit
    @page = BigCms::Page.find(params[:id])
  end

  # POST /big_cms/pages
  # POST /big_cms/pages.xml
  def create
    @page = BigCms::Page.new(params[:page])

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
    @page = BigCms::Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
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
    @page = BigCms::Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_pages_url) }
      format.xml  { head :ok }
    end
  end
end
end
