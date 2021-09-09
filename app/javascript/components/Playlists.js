import React from "react";

const Playlists = ({ playlists }) => {
  return (
    <>
      <h1>Playlists</h1>
      <a href="/playlists/new">Add Playlist</a>
      {playlists.map((playlist) => (
        <div>
          <h3>{playlist.artist}</h3>
          <a href={`/playlists/${playlist.id}`}>Show</a>
          {' '}
          <a href={`/playlists/${playlist.id}/edit`}>Edit</a>
          {' '}
          <a href={`/playlists/${playlist.id}`} data-method="delete">Remove</a>
        </div>
      ))}
    </>  
  )
}

export default Playlists;
