import React from 'react';

const ArtistEdit = ({ artist }) => {
  const { name, id } = artist
  const defaultName = name ? name : ""
  // const defaultAge = age ? age : ""
  return (
    <>
      <h1>Edit an Artist</h1>
      <form action={`/artists/${id}`} method="post">
        {/* important hidden field to be able to edit */}
        <input type="hidden" name="_method" value="patch" />
        <input
          type="text"
          defaultValue={defaultName}
          name="artist[name]"
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

export default ArtistEdit;