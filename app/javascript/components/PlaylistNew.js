import React from 'react';
const PlaylistNew = ({ playlist }) => {
  const { artist } = playlist
  const defaultName = artist ? artist : ""
  return (
    <>
      <h1>New Playlist Form</h1>
      <form action='/playlists' method="post">
        <input
          type="text"
          defaultValue={defaultName}
          name="playlist[artist]"
          required
          placeholder="Playlist"
        />
        <button type='submit'>Add Playlist</button>
      </form>
    </>
  )
}
export default PlaylistNew;