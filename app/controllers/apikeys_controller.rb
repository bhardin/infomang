class ApikeysController < ApplicationController
  # GET /apikeys
  # GET /apikeys.xml
  def index
    @apikeys = Apikey.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @apikeys }
    end
  end

  # GET /apikeys/1
  # GET /apikeys/1.xml
  def show
    @apikey = Apikey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @apikey }
    end
  end

  # GET /apikeys/new
  # GET /apikeys/new.xml
  def new
    @apikey = Apikey.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @apikey }
    end
  end

  # GET /apikeys/1/edit
  def edit
    @apikey = Apikey.find(params[:id])
  end

  # POST /apikeys
  # POST /apikeys.xml
  def create
    @apikey = Apikey.new(params[:apikey])

    respond_to do |format|
      if @apikey.save
        format.html { redirect_to(@apikey, :notice => 'Apikey was successfully created.') }
        format.xml  { render :xml => @apikey, :status => :created, :location => @apikey }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @apikey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /apikeys/1
  # PUT /apikeys/1.xml
  def update
    @apikey = Apikey.find(params[:id])

    respond_to do |format|
      if @apikey.update_attributes(params[:apikey])
        format.html { redirect_to(@apikey, :notice => 'Apikey was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @apikey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /apikeys/1
  # DELETE /apikeys/1.xml
  def destroy
    @apikey = Apikey.find(params[:id])
    @apikey.destroy

    respond_to do |format|
      format.html { redirect_to(apikeys_url) }
      format.xml  { head :ok }
    end
  end
end
