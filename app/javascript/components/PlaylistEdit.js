import React from 'react';
const PlaylistEdit = ({ sub }) => {
  const { artist } = sub
  const defaultName = artist ? artist : ""
  return (
    <>
      <h1>Edit a Playlist</h1>
      <form action={`/playlists/${id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <input
          type="text"
          defaultValue={defaultName}
          name="playlist[name]"
        />
        <button type="submit">Update</button>
      </form>
    </>
  )
}