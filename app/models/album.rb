class Album < ActiveRecord::Base
  belongs_to :artist
  attr_accessible :info, :name, :release_date, :genre, :cover, :artist, :songs_attributes
  has_many :songs, :dependent => :destroy
  accepts_nested_attributes_for :songs, :allow_destroy => :true
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_date :release_date

  has_attached_file :cover, 
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

  validates_attachment_content_type :cover, :content_type => /image/
  validates_attachment_size :cover, :less_than => 2.megabytes

  def duration
    songs.map{|s| s.duration}.sum
  end
end
