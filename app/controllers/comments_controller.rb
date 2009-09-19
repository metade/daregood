class CommentsController < ApplicationController
  resources_controller_for :comments
  
  protected
  
  def new_resource(attributes = (params[resource_name] || {}))
    resource_service.new({ :user_id => current_user}.merge(attributes))
  end
end
