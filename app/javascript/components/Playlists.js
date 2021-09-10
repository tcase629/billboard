import React from 'react';

const Playlists = ({ playlists }) => {
  return (
    <>
      <h1>Playlists</h1>
      <a href="/playlists/new">New Playlist</a>
      { 
       playlists.map( (playlist) => (
          <div>
            <h5>{playlist.artist}</h5>
            <a href={`/playlists/${playlist.id}`}>Show</a>
            {' '}
            <a href={`/playlists/${playlist.id}/edit`}>Edit</a>
            {' '}
            <a 
              href={`/playlists/${playlist.id}`} 
              data-method="delete"
            >
                Delete
            </a>
          </div>
        ))
      }
    </>
  )
}

export default Playlists;
