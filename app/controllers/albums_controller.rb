class AlbumsController < ApplicationController
  respond_to :html, :js
  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def add
    @album = Album.new
    @name = Artist.find(params[:artist]).name

    respond_to do |format|
      format.html {render 'albums/new'}
      format.json { render json: @album }
    end
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
    @name = ''
    @name = @album.artist.name if @album.artist
  end

  # POST /albums
  # POST /albums.json
  def create
    params[:album][:artist] = Artist.find_or_new params[:album][:artist] 
    @album = Album.new(params[:album])

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render json: @album, status: :created, location: @album }
      else
        clean @album.errors
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
    @album = Album.find(params[:id])
    params[:album][:artist] = Artist.find_or_new params[:album][:artist] 
    
    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { head :no_content }
      else
        clean @album.errors
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to albums_url }
      format.json { head :no_content }
    end
  end

  private
  def clean errors #workaround to ignore "'identify' command" errors
    errors.each do |key, error|
      errors.delete(key) if error =~ /\'identify\' command/i
    end
  end

end
