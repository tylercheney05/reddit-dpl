import React from 'react';
const Topics = ({ sub, topics }) => {
  const { title, id } = sub
  return(
    <>
      <h1>Topics from {title} sub</h1>
      <a href={`/subs/${id}/topics/new`}>New Topic</a>
      <br />
      <a href={`/subs/${id}`}>Back to {title}</a>
      { topics.map((topic) => (
        <div key={topic.id}>
          <h1>{topic.name}</h1>
          <a href={`/subs/${id}/topics/${topic.id}`}>Show</a>
          <br />
          <a href={`/subs/${id}/topics/${topic.id}/edit`}>Edit</a>
          <br />
          <a 
            href={`/subs/${id}/topics/${topic.id}`}
            data-method="delete"
          >
            Delete
          </a>
        </div>
      ))}
    </>
  )
}
export default Topics;