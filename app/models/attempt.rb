class Attempt < ActiveRecord::Base
  belongs_to :user
  belongs_to :darer, :class_name => 'User'
  belongs_to :daree, :class_name => 'User'
  belongs_to :charity
  belongs_to :challenge
  has_many :pledges
  has_many :comments, :as => :owner
  
  validates_presence_of :target_value, :on => :update
  validates_presence_of :charity_id, :on => :update
  validates_uniqueness_of :daree_id, :scope => :challenge_id, :message => "is already doing this dare"
  
  def value_pledged
    pledges.sum :value
  end
  
  def progress
    target_value.nil? ? 0 : (value_pledged / target_value.to_f) * 100
  end
end
