class Challenge < ActiveRecord::Base
  belongs_to :user
  has_many :attempts
  has_many :comments, :as => :owner
end
