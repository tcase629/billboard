import React from 'react'

const PlaylistEdit = ({ playlist }) => {
  const { artist, id } = playlist
  const defaultName = artist ? artist : ""
  return (
    <>
      <h1>Edit a Sub</h1>
      <form action={`/playlists/${id}`} method="post">
        {/* important hidden field to be able to edit */}
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


export default PlaylistEdit;