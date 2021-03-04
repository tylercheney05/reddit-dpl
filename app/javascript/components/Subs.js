import React from 'react';
const Subs = ({ subs }) => {
  return (
    <>
      <h1>All the Subs</h1>
      <a href={"/subs/new"}>Add Sub</a>
      { subs.map( (sub) => 
        <div>
          <h3>{sub.title}</h3>
        </div>
      )}
    </>
  )
}
export default Subs;