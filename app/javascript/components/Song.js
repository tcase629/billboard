import React from 'react';
const Song = ({ song }) => {
 const { titile } = song
  return (
    <>
      <h1>{titile}</h1>
      <br/>
      <a href ="/">Back</a>
      <br/>

    <a href={`/songs/${id}/artists`}>Songs</a>
    </>
  )
}

export default Song;
