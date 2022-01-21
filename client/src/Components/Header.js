import React from 'react'
import NavBar from './NavBar'

export const Header = ({ currentUser, setCurrentUser}) => {
    return (
        <div>
            <div className="header">
                <NavBar currentUser={currentUser} setCurrentUser={setCurrentUser} />
            </div>
        </div>
    )
}

export default Header