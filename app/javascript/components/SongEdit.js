import React from 'react';
const SongEdit = ({ song }) => {
  const { title } = song
  const defaultTitle = title ? title : ""
  return (
    <>
      <h1>Edit a Song</h1>
      <form action={`/songs/${id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <input
          type="text"
          defaultValue={defaultTitle}
          name="song[title]"
        />
        <button type="submit">Update</button>
      </form>
    </>
  )
}