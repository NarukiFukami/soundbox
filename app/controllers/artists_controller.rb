class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  def index
    @artists = Artist.all.by_new
  end

  def show
    # @work = Work.find(params[:id])
  end

  def create
    @artist = Artist.new(artist_params)
    if @srtist.save
      redirected_to artists_path
    else
      render 'new'
    end
  end

  def new
    @artist = Artist.new
  end

  def edit
    # @work = Work.find(params[:id])
  end

  def update
    # @work = Work.find(params[:id])
    if @artist.update(artist_params)
      redirected_to artist_path(@artist)
    else
      render 'edit'
    end
  end

  def destroy
    # @work = Work.find(params[:id])
    @artist.destroy
    redirected_to artists_path
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params[:artist].permit(

    )
  end
end
