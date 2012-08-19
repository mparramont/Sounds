class SearchController < ApplicationController
  def search
    @q = params[:q]
    @artists = Artist.search(@q)
    @albums = Album.search(@q)
    @songs = Song.search(@q)
    respond_to do |format|
      format.html # search.html.haml
      format.json { render json: (@artists + @albums + @songs) }
    end    
  end
end
