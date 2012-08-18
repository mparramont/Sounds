class SearchController < ApplicationController
  def search
    @artists = Artist.search(params[:query])
    @albums = Album.search(params[:query])
    @songs = Song.search(params[:query])
    respond_to do |format|
      format.html # search.html.haml
      format.json { render json: (@artists + @albums + @songs) }
    end    
  end
end
