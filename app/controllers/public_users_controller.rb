class PublicUsersController < ApplicationController
  resources_controller_for :public_users, :class => User
  
  def show
    @public_user = find_resource
    @user = @public_user
  end
end
