class Artist < ActiveRecord::Base
  attr_accessible :bio, :name
  validates_presence_of :name
  validates_uniqueness_of :name
end
