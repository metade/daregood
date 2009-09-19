class ChallengesController < ApplicationController
  # GET /challenges
  # GET /challenges.xml
  def index
    @challenges = Challenge.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @challenges }
    end
  end

  # GET /challenges/1
  # GET /challenges/1.xml
  def show
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @challenge }
    end
  end

  # GET /challenges/new
  # GET /challenges/new.xml
  def new
    @challenge = Challenge.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @challenge }
    end
  end

  # GET /challenges/1/edit
  def edit
    @challenge = Challenge.find(params[:id])
  end

  # POST /challenges
  # POST /challenges.xml
  def create
    @challenge = Challenge.new(params[:challenge])

    respond_to do |format|
      if @challenge.save
        flash[:notice] = 'Challenge was successfully created.'
        format.html { redirect_to(@challenge) }
        format.xml  { render :xml => @challenge, :status => :created, :location => @challenge }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @challenge.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /challenges/1
  # PUT /challenges/1.xml
  def update
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      if @challenge.update_attributes(params[:challenge])
        flash[:notice] = 'Challenge was successfully updated.'
        format.html { redirect_to(@challenge) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @challenge.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /challenges/1
  # DELETE /challenges/1.xml
  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy

    respond_to do |format|
      format.html { redirect_to(challenges_url) }
      format.xml  { head :ok }
    end
  end
end
