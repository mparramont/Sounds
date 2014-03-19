class Artist < ActiveRecord::Base
  attr_accessible :bio, :name, :picture
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :albums

  has_attached_file :picture, 
    :styles => {
      :medium => "300x300"
    },
    :default_url => '/images/missing_:style.png',
    :storage => :s3,
    :s3_credentials => {
      :bucket            => ENV['S3_BUCKET_NAME'],
      :access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }

  validates_attachment_content_type :picture, :content_type => /image/
  validates_attachment_size :picture, :less_than => 2.megabytes

  def self.find_or_new name
    Artist.find_by_name(name) or Artist.new(:name => name) 
  end

  def songs
    albums.map{|a| a.songs.count}.sum
  end
end
