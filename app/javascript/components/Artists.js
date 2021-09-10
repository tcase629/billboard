import React from 'react';

const Artists = ({ playlist, artists }) => {
  const { name, id } = playlist
  return (
    <>
      <h1>{name}New Artist</h1>
      <a href={`/playlists/${id}/artists/new`}>New Artist</a>
      {
        artists.map((artist) => (
          <div>
            <h3>{artist.title}</h3>
            <a href={`/playlists/${id}/artists/${artist.id}`}>Show</a>
            <a href={`/playlists/${id}/artists/${artist.id}/edit`}>Edit</a>
            <a 
              href={`/playlists/${id}/artists/${artist.id}`}
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

export default Artists;