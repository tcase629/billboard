import React from 'react';

const ArtistNew = ({ artist }) => {
  // in case of failed form still save the 
  // users input
  // continue the pattern for all fields
  const { name } = artist
  const defaultName = name ? name : ""
  return (
    <>
      <h1>New Artist Form</h1>
      <form action='/artists' method="post">
        <input
          type="text"
          defaultValue={defaultName}
          name="artist[name]"

          // optional
          required
          placeholder="Name"
        />
        <button type='submit'>Add Artist</button>
      </form>
    </>
  )
}

export default ArtistNew;
