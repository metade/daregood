# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  include AuthenticatedSystem
  map_resource :account, :find => :current_user, :class => User, :singleton => true
  map_resource :public_user, :class => User do
    User.find(params[:public_user_id])
  end
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
