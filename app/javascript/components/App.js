import React from 'react'
import {Route, Switch} from 'react-router-dom'
import Airlines from './Airlines/Airlines'
import Airline from './Airline/Airline'

const App = () => {
  return (
  <switch>
    <Route exact path="/" component={Airlines}/>
    <Route exact path="/airlines/:slug" component={Airline}/>
  </switch>
  )
}

export default App