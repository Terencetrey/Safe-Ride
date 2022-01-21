import React, { useState, useEffect } from 'react'
import Header from './Header'

import MapContainer from './MapContainer'


export default function Home({ currentUser, setCurrentUser }) {
    const [buttonPopup, setButtonPopup] = useState(false);

    
        
     return (
        <>
            <Header currentUser={currentUser} setCurrentUser={setCurrentUser} />
            <div className='homePage'>
            <MapContainer />
            </div>

             <div>
            <footer></footer>
            </div>

        </>
    )
}