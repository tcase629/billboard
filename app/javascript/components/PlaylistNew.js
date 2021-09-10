import React from 'react';

const PlaylistNew = ({ playlist }) => {
  // in case of failed form still save the 
  // users input
  // continue the pattern for all fields
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

          // optional
          required
          placeholder="Playlist"
        />
        <button type='submit'>Add Playlist</button>
      </form>
    </>
  )
}

export default PlaylistNew;
