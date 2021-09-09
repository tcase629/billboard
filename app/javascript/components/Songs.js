import React from 'react';
const Songs = ({ songs }) => {
  return (
    <>
      <h1>Songs index</h1>
      <a href="/songs/new">New Song</a>
      {
       songs.map( (song) => (
          <div>
            <h5>{song.name}</h5>
            <a href={`/songs/${song.id}`}>Show</a>
            {' '}
            <a href={`/songs/${song.id}/edit`}>Edit</a>
            {' '}
            <a
              href={`/songs/${song.id}`}
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
export default Songs;