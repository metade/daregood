class PledgesController < ApplicationController
  # GET /pledges
  # GET /pledges.xml
  def index
    @pledges = Pledge.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pledges }
    end
  end

  # GET /pledges/1
  # GET /pledges/1.xml
  def show
    @pledge = Pledge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pledge }
    end
  end

  # GET /pledges/new
  # GET /pledges/new.xml
  def new
    @pledge = Pledge.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pledge }
    end
  end

  # GET /pledges/1/edit
  def edit
    @pledge = Pledge.find(params[:id])
  end

  # POST /pledges
  # POST /pledges.xml
  def create
    @pledge = Pledge.new(params[:pledge])

    respond_to do |format|
      if @pledge.save
        flash[:notice] = 'Pledge was successfully created.'
        format.html { redirect_to(@pledge) }
        format.xml  { render :xml => @pledge, :status => :created, :location => @pledge }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pledge.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pledges/1
  # PUT /pledges/1.xml
  def update
    @pledge = Pledge.find(params[:id])

    respond_to do |format|
      if @pledge.update_attributes(params[:pledge])
        flash[:notice] = 'Pledge was successfully updated.'
        format.html { redirect_to(@pledge) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pledge.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pledges/1
  # DELETE /pledges/1.xml
  def destroy
    @pledge = Pledge.find(params[:id])
    @pledge.destroy

    respond_to do |format|
      format.html { redirect_to(pledges_url) }
      format.xml  { head :ok }
    end
  end
end
