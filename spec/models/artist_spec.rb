require 'spec_helper'

describe Artist do
  before :all do
    @artist = Artist.create!(:name => "Name")
  end

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
