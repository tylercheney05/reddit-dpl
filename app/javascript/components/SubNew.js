import React from 'react';
const SubNew = ({ sub }) => {
  // if it does fail, the values don't get lost
  const { title } = sub
  const defaultTitle = title ? title : ""
  return(
    <>
      <h1>New Sub</h1>
      <form action="/subs" method="post">
        <input 
          placeholder="Title"
          type="text"
          defaultValue={defaultTitle}
          name="sub[title]"
        />
        <button type="submit">Add</button>
      </form>
    </>
  )
}
export default SubNew;