import React from 'react';

const PlaylistEdit = ({ playlist }) => {
  const { artist, id } = playlist
  const defaultArtist = artist ? artist : ""
  // const defaultAge = age ? age : ""
  return (
    <>
      <h1>Edit a Playlist</h1>
      <form action={`/playlists/${id}`} method="post">
        {/* important hidden field to be able to edit */}
        <input type="hidden" name="_method" value="patch" />
        <input
          type="text"
          defaultValue={defaultArtist}
          name="playlist[artist]"
        />
        {/* <input
          type="text"
          defaultValue={defaultAge}
          name="sub[age]"
        /> */}
        <button type="submit">Update</button>
      </form>
    </>
  )
}

export default PlaylistEdit;