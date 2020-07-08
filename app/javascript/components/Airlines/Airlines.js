import React, { useState, useEffect, Fragment }from 'react'
import axios from 'axios'

const Airlines = () => {
  const [airlines, setAirlines] = useState([])

  useEffect(()=> {
    // Get all of airlines from api
    // Update airlines in state

  axios.get('/api/v1/airlines.json')
  .then( resp => {
    setAirlines(resp.data.data)
  })
  .catch( resp => console.log(resp) )
  ;}, [airlines.length]);

  const list = airlines.map(item => {
    return (<li key={item.attributes.name}>{item.attributes.name}</li>)
  })

  return (
    <Fragment>
    <div>This is the Airlines#index view for app.</div>
    <li>list</li>
    </Fragment>
  )
}

export default Airlines