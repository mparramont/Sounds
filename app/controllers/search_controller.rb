class SearchController < ApplicationController
  def search
    @q = params[:q]
    @artists = Artist.basic_search(@q)
    @albums = Album.basic_search(@q)
    @songs = Song.basic_search(@q)
    respond_to do |format|
      format.html # search.html.haml
      format.json { render json: (@artists + @albums + @songs) }
    end    
  end
end
