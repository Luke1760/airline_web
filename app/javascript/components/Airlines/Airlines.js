import React, { useState, useEffect }from 'react'

const Airlines = () => {
  const [airlines, setAirlines] = useState([])

  useEffect((()=> {
    // Get all of airlines from api
    // Update airlines in state
  })
  return (
    <div>This is the Airlines#index view for app.</div>
  )
}

export default Airlines