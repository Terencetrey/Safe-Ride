import React from 'react';
import { Link } from "react-router-dom";
import { useNavigate } from "react-router-dom";




function Account({ user }) {
  let navigate = useNavigate();
function handleBackClick() {
  
   navigate("/maindashboard");
  
}

console.log(user);
  
    return (
      <>
        <div>
          <div className="accountinfo">
            <div className="accountContainerL">
              <p>First Name</p>
              <div className="accountinfo">
                <div className="ucontent">{user.first_name}</div>
              </div>
              <p>Last Name</p>
              <div className="accountinfo">
                <div className="ucontent">{user.last_name}</div>
              </div>
              <p>EMAIL</p>
              <div className="accountinfo">
                <div className="ucontent">{user.email}</div>
              </div>

              <p>PHONE NUMBER</p>
              <div className="accountinfo">
                <div className="ucontent">{user.phone_number}</div>
              </div>

              <p>PASSWORD</p>

              <div className="accountinfo">
                <div className="ucontent">***** {user.password}</div>
              </div>
              <Link
                to="/maindashboard"
                onClick={handleBackClick}
                className="back"
              >
                BACK
              </Link>
            </div>
          </div>
        </div>
      </>
    );
  }
  
  export default Account;