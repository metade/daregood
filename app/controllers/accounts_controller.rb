class AccountsController < ApplicationController
  resources_controller_for :account, :class => User, :singleton => true do
    @current_user
  end
end
