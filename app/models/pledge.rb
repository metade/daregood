class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :attempt
  belongs_to :charity
  has_many :comments, :as => :owner
end
