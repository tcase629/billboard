import React from 'react';
const SongNew = ({ song }) => {
  const { title } = song
  const defaultTitle = title ? title : ""
  return (
    <>
      <h1>New Song Form</h1>
      <form action='/songs' method="post">
        <input
          type="text"
          defaultValue={defaultTitle}
          name="song[title]"
          // optional
          required
          placeholder="Title"
        />
        <button type='submit'>Add Song</button>
      </form>
    </>
  )
}
export default SongNew;