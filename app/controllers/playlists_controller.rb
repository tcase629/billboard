class PlaylistsController < ApplicationController
  
  def index
    @playlists = Playlist.all
    render component: 'Playlists', props: { playlists: @playlists }
  end

  def show
    @playlist = Playlist.find(params[:id])
    render component: 'Playlist', props: { playlist: @playlist }
  end

  def new
    @playlist = Playlist.new
    render component: 'PlaylistNew', props: { playlist: @playlist }
  end
  
  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to playlists_path
    else
      render component: 'PlaylistNew', props: { model_name: @playlist }
    end
  end

  def edit
    @playlist = Playlist.find(params[:id])
    render component: 'PlaylistEdit', props: { playlist: @playlist }
  end

  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update(playlist_params)
      redirect_to playlists_path
    else
      render component: 'PlaylistEdit', props: { playlist: @playlist }
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to playlists_path
  end

  private
    def playlist_params
      params.require(:playlist).permit(:artist, :genre)
    end

end
