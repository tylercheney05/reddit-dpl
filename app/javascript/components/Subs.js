import React from 'react';
const url = "http://localhost:3000/subs/";
const Subs = ({ subs }) => {
  return (
    <>
      <h1>All the Subs</h1>
      <a href={"/subs/new"}>Add Sub</a>
      { subs.map( (sub) => 
        <div>
          <h3>{sub.title}</h3>
          <a href={url + sub.id}>Show</a>
          <br />
          <a href={url + sub.id + "/edit"}>Edit</a>
          <br />
          <a 
            href={url + sub.id }
            data-method="delete"
          >
            Delete
          </a>
        </div>
      )}
    </>
  )
}
export default Subs;