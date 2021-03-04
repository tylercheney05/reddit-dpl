import React from 'react';
// const TestCom = (props) => {
const TestCom = ({ subs }) => {
  return(
    <>
      <h1>Hello World</h1>
      <p>{subs}</p>
    </>
  )
}
const TestCom = ({ subs }) => (
  <>
    <h1>Hello World</h1>
    <p>{subs}</p>
  </>
)
export default TestCom;