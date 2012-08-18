require 'texticle/searchable'
class Artist < ActiveRecord::Base
  attr_accessible :bio, :name
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :albums

  extend Searchable(:name)

  def self.find_or_new name
    Artist.find_by_name(name) or Artist.new(:name => name) 
  end
end
