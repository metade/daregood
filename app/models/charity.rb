class Charity < ActiveRecord::Base
  has_many :pledges
end
