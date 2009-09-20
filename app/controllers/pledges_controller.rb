class PledgesController < ApplicationController
  resources_controller_for :pledges
  
  # POST /events
  # POST /events.xml
  def create
    self.resource = new_resource
    
    respond_to do |format|
      if resource.save
        format.html do
          flash[:notice] = "#{resource_name.humanize} was successfully created."
          redirect_to challenge_attempt_url(resource.attempt.challenge, resource.attempt)
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
  
  def new_resource(attributes = (params[resource_name] || {}))
    resource_service.new({ :user_id => current_user}.merge(attributes))
  end
end
