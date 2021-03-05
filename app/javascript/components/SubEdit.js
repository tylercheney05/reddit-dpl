import React from 'react';
const SubEdit = ({ sub }) => {
  const { title, id } = sub
  const defaultTitle = title ? title : "";
  return(
    <>
      <h1>Edit Sub</h1>
      <form action={`/subs/${id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <input
          placeholder="Name"
          required
          type="text"
          defaultValue={defaultTitle}
          name="sub[title]"
        />
        <button type="Submit">Update</button>
      </form>
    </>
  )
}
export default SubEdit;