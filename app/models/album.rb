class Album < ActiveRecord::Base
  attr_accessible :info, :name, :release_date
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_date :release_date
end
