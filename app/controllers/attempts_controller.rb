class AttemptsController < ApplicationController
  resources_controller_for :attempts
  
  def paypal
    @attempt = find_resource
  end
  
  # POST /events
  # POST /events.xml
  def create
    self.resource = new_resource
    
    respond_to do |format|
      if resource.save
        format.html do
          flash[:notice] = "#{resource_name.humanize} was successfully created."
          redirect_to edit_challenge_attempt_path(resource.challenge, resource)
        end
        format.js
        format.xml  { render :xml => resource, :status => :created, :location => resource_url }
      else
        format.html { render :action => "new" }
        format.js   { render :action => "new" }
        format.xml  { render :xml => resource.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # PUT /events/1
  # PUT /events/1.xml
  def update
    self.resource = find_resource
    
    respond_to do |format|
      if resource.update_attributes(params[resource_name])
        format.html do
          flash[:notice] = "#{resource_name.humanize} was successfully updated."
          redirect_to challenge_attempt_path(resource.challenge, resource)
        end
        format.js
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.js   { render :action => "edit" }
        format.xml  { render :xml => resource.errors, :status => :unprocessable_entity }
      end
    end
  end
end
