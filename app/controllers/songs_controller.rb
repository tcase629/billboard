class SongsController < ApplicationController
  before_action :set_artist
  
  def index
    @songs = @artists.songs
    render component: 'Song', props: { songs: @songs, artist: @artist }
  end

  def show
    @song = @artist.songs.find(params[:id])
    render component: 'Song', props: { song: @song, artist: @artist }
  end

  def new
    @song = @artist.songs.new
    render component: 'SongNew', props: { song: @song, artist: @artist }
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to root_path
    else
      render component: 'SongNew' props: { song: @song, artist: @artist}
    end
  end

  def edit
    @song = @artist.songs.find(params[:id])
    render component: 'SongEdit', props: { song: @song, artist: @artist }
  end

  def update
    @song = @artist.songs.find(params[:id])
    if @song.update(song_params)
      redirect_to root_path
    else
      render component: 'SongEdit', props: { song: @song, artist: @artist }
    end
  end

  def destroy
    @artist.songs.find(params[:id]).destroy
    redirect_to root_path
  end

  private 
    def set_artist
      @artist = Artist.find(params[:playlist_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).premit(:title, :album, :rank)
    end
end
