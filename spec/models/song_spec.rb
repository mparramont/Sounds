require 'spec_helper'

describe Song do
  before :each do
    valid_params = {:name => "Name", :duration => 300}
    @song = Song.create!(valid_params)
  end

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:duration) }

  it "should only allow positive integer durations" do
    @song.duration = -1
    @song.should_not be_valid
  end
end
