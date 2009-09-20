class HomeController < ApplicationController
  def index
    @attempts = Attempt.find(:all)
  end
end
