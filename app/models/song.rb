class Song < ActiveRecord::Base
  belongs_to :album
  attr_accessible :duration, :name, :album
  validates_presence_of :duration, :name
  validates_numericality_of :duration, :greater_than_or_equal_to => 0
end
