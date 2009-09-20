class ChallengesController < ApplicationController
  resources_controller_for :challenges
  
  # POST /events
  # POST /events.xml
  def create
    self.resource = new_resource
    
    respond_to do |format|
      if resource.save
        format.html do
          flash[:notice] = "#{resource_name.humanize} was successfully created."
          redirect_to challenge_url(resource)
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
end
