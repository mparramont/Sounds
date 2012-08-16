class Song < ActiveRecord::Base
  attr_accessible :duration, :name
  validates_presence_of :duration, :name
  validates_uniqueness_of :name
  validates_numericality_of :duration, :greater_than_or_equal_to => 0
end
