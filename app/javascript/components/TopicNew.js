import React from 'react';
const TopicNew = ({ sub, topic }) => {
  const { id } = sub
  const { name, body, errors } = topic
  const defaultName = name ? name : ""
  const defaultBody = body ? body : ""
  return(
    <>
      <h1>New Topic</h1>
      { errors && errors }
      <form action={`/subs/${id}/topics`} method="post">
        <input
          placeholder="name"
          defaultValue={defaultName}
          type="text"
          name="topic[name]"
        />
        <textarea
          placeholder="body"
          defaultValue={defaultBody}
          name="topic[body]"
        />
        <button type="submit">Add Topic</button>
      </form>
    </>
  )
}
export default TopicNew;