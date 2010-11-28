class BigCms::NavigationsController < ApplicationController
  unloadable
  layout "big_cms"
  # GET /big_cms/navigations
  # GET /big_cms/navigations.xml
  def index
    @navigations = BigCms::Navigation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @navigations }
    end
  end

  # GET /big_cms/navigations/1
  # GET /big_cms/navigations/1.xml
  def show
    @navigation = BigCms::Navigation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @navigation }
    end
  end

  # GET /big_cms/navigations/new
  # GET /big_cms/navigations/new.xml
  def new
    @navigation = BigCms::Navigation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @navigation }
    end
  end

  # GET /big_cms/navigations/1/edit
  def edit
    @navigation = BigCms::Navigation.find(params[:id])
  end

  # POST /big_cms/navigations
  # POST /big_cms/navigations.xml
  def create
    @navigation = BigCms::Navigation.new(params[:big_cms_navigation])

    respond_to do |format|
      if @navigation.save
        format.html { redirect_to(@navigation, :notice => 'Navigation was successfully created.') }
        format.xml  { render :xml => @navigation, :status => :created, :location => @navigation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @navigation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /big_cms/navigations/1
  # PUT /big_cms/navigations/1.xml
  def update
    @navigation = BigCms::Navigation.find(params[:id])

    respond_to do |format|
      if @navigation.update_attributes(params[:big_cms_navigation])
        format.html { redirect_to(@navigation, :notice => 'Navigation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @navigation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /big_cms/navigations/1
  # DELETE /big_cms/navigations/1.xml
  def destroy
    @navigation = BigCms::Navigation.find(params[:id])
    @navigation.destroy

    respond_to do |format|
      format.html { redirect_to(big_cms_navigations_url) }
      format.xml  { head :ok }
    end
  end
end
