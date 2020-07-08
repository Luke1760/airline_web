import React from 'react'
import {Route, Switch} from 'react-router-dom'
const App = () => {
  return (
  <switch>
    <Route exact path="/" component={Airlines}/>
    <Route exact path="/airlines/:slug" component={Airlines}/>
  </switch>)
}

export default App