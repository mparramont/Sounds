require 'spec_helper'

describe Artist do
  before :all do
    @artist = Artist.create!(:name => "Name")
  end

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }

  it { should validate_attachment_content_type(:picture).
      allowing('image/png', 'image/gif', 'image/jpg').
      rejecting('text/plain', 'text/xml') }
  it { should validate_attachment_size(:picture).
      less_than(2.megabytes) }
end
