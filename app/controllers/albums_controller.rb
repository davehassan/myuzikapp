class AlbumsController < ApplicationController

  def index
  end

  def new
    @album = Album.new
    @band = Band.find(params[:band_id])
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def destroy
  end

  private
    def album_params
      params.require(:album).permit(:name, :band_id, :recorded)
    end
end
