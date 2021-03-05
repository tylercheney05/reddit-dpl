import React from 'react';
const Sub = ({ sub }) => {
  const { id, title, created_at } = sub;
  // const id = sub.id
  // const title = sub.title
  // const created_at = sub.created_at
  return (
    <>
      <h1>Sub: {title}</h1>
      <p>
        created: {created_at}, id: {id}
      </p>
      <a href="/">back</a>
      <br />
      <a href={`/subs/${id}/topics`}>Topics</a>
    </>
  )
}
export default Sub;