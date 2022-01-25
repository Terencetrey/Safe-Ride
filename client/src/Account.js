import React from 'react';




function Account({ user }) {
    return (
      <div>
        <div className="signinPage">
          <div className="signContainerL">
            <p>NAME</p>
            <div className="accountinfo">
              <div className="ucontent">{user.first_name}</div>
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
          </div>
          

          
        </div>
      </div>
    );
  }
  
  export default Account;