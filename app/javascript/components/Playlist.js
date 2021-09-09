import React from 'react';
const Playlist = ({ playlist }) => {
 const { artist, id } = playlist
  return (
    <>
      <h1>{artist}</h1>
      <br/>
      <a href ="/">Back</a>
      <br/>

    <a href={`/playlists/${id}/artists`}>Playlists</a>
    </>
  )
}

export default Playlist;
