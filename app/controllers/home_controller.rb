class HomeController < ApplicationController
  def index
    @albums = Album.last(4)
    @artists = Artist.last(4)
  end
end
