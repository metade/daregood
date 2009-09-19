class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :attempt
  belongs_to :charity
end
