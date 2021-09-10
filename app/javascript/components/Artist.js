import React from 'react';

const ArtistNew = ({ playlist, artist }) => {
  const { id } = playlist
  const { title, desc } = artist
  const defaultTitle = title ? title : "";
  const defaultDesc = desc ? desc : "";
  return (
    <>
      <h1>New Artist</h1>
      <form action={`/playlists/${id}/artists`} method="post">
        <input
          type="text"
          defaultValue={defaultTitle}
          name="artist[title]"
          required
          placeholder="Title"
        />
        <input
          type="text"
          defaultValue={defaultDesc}
          name="artist[desc]"
          required
          placeholder="Description"
        />
        <button type="submit">Add</button>
      </form>
    </>
  )
}

export default ArtistNew;