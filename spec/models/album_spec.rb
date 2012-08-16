require 'spec_helper'

describe Album do
  before :each do
    valid_params = {:name => "Name", :release_date => "1980/01/01"}
    @album = Album.create!(valid_params)
  end

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }

  it "should not be valid with an invalid date" do
    @album.release_date = "bogus"
    @album.should_not be_valid
  end

  it { should validate_attachment_content_type(:cover).
        allowing('image/png', 'image/gif', 'image/jpg').
        rejecting('text/plain', 'text/xml') }
  it { should validate_attachment_size(:cover).
                less_than(2.megabytes) }

end
