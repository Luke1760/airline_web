import React from 'react'
import {Route, Switch} from 'react-router-dom'
import Airlines from './Airlines/Airlines'
import airlines from './Airline/Airline'

const App = () => {
  return (
  <switch>
    <Route exact path="/" component={Airlines}/>
    <Route exact path="/airlines/:slug" component={Airlines}/>
  </switch>)
}

export default App