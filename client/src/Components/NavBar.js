import React from 'react'
import { Link } from "react-router-dom"
import {FaSnowboarding} from "react-icons/fa"
import {RiLogoutBoxFill} from "react-icons/ri"
import {RiLoginBoxFill} from "react-icons/ri"

export const NavBar = ({ currentUser, setCurrentUser }) => {
    const handleLogout = () => {
        fetch("/logout", { method: "DELETE" });
        setCurrentUser(null)
    }


    return (
        <div className="navbar">
            <nav>

            <div className='snowIcon'> 

            <Link to="/">
                <FaSnowboarding size='76' color='black' />
            </Link>
            </div>
            <div className='loginIcon'>
            {currentUser ?
                (<Link to='/'> <RiLogoutBoxFill size='76' color='black' onClick={handleLogout} /> </Link>) :
                (<Link to='/login'> <RiLoginBoxFill size='76' color='black' /> </Link>)
            }

            </div>
            </nav>
        </div>
    )
}

export default NavBar