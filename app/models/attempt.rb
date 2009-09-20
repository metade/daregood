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
    pledges.sum :value # { |sum, p| sum + p.value }
  end
  
  def progress
    target_value ? (value_pledged / target_value) * 100 : 0
  end
end
