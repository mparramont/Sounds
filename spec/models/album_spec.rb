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
end
