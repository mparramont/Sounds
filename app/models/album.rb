class Album < ActiveRecord::Base
  attr_accessible :info, :name, :release_date, :cover
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_date :release_date

  has_attached_file :cover, 
    :styles => {
      :large => "600x600>",
      :medium => "300x300>",
      :thumb => "100x100>" 
    },
    :default_url => '/images/missing_:style.png'
end
