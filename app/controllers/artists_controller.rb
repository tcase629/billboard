class ArtistsController < ApplicationController
  before_action :set_playlist
  
  def index
    @artists = @playlist.artists
    render component: 'Artist', props: { artists: @artists, playlist: @playlist }
  end

  def show
    @artist = @playlist.artists.find(params[:id])
    render component: 'Artist', props: { artist: @artist, playlist: @playlist }
  end

  def new
    @artist = @playlist.artists.new
    render component: 'ArtistNew', props: { artist: @artist, playlist: @playlist }
  end

  def create
    @artist = @playlist.artists.new(artist_params)
    if @artist.save
      redirect_to root_path
    else
      render component: 'ArtistNew' props: { artist: @artist, playlist: @playlist}
    end
  end

  def edit
    @artist = @playlist.artists.find(params[:id])
    render component: 'ArtistEdit', props: { artist: @artist, playlist: @playlist }
  end

  def update
    @artist = @playlist.artists.find(params[:id])
    if @artist.update(artist_params)
      redirect_to root_path
    else
      render component: 'ArtistEdit', props: { artist: @artist, playlist: @playlist }
    end
  end

  def destroy
    @playlist.artists.find(params[:id]).destroy
    redirect_to root_path
  end

  private 
    def set_playlist
      @playlist = Playlist.find(params[:playlist_id])
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).premit(:name, :genre)
    end

end
