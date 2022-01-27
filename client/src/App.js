import React, { useState, useEffect } from "react";

import { useNavigate, Routes, Route } from "react-router-dom";

import Login from "./Login";
import SignUp from "./SignUp";
import Account from "./Account";

import DriverDashboard from "./DriverDashboard";


import PassengerDashboard from "./PassengerDashboard";
import MainDashboard from "./MainDashboard";


function App() {
  // User state for login
  const [user, setUser] = useState(null);
  let navigate = useNavigate();

  //Fetch to find current user in session + setUser
  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  //Handle function for login user state
  function handleLogin(user) {
    setUser(user);
    navigate("/maindashboard");

    console.log(user);
  }

  return (
    <div>
      <Routes>
        <Route path="/" element={<Login handleLogin={handleLogin} />} />
        <Route path="/signup" element={<SignUp />} />
        {/* <Route path="/home" element={<Home />} /> */}
        {/* <Route path="/" element={<MapContainer />} /> */}

        {/* <Route path="/header" element={<Header />} /> */}
        {/* <Route path="/sidebar" element={<SideBar />} /> */}
        
        <Route
          path="/passengerdashboard"
          element={<PassengerDashboard user={user} />}
        />
        <Route path="/maindashboard" element={<MainDashboard user={user} />} />
        <Route path="/account" element={<Account user={user} />} />
        {/* <Route path=":id" element={<PassengerDetail />} /> */}

        <Route>
          
          <Route
            path="/driverdashboard"
            element={<DriverDashboard user={user} />}
          />
          {/* <Route path=":id" element={<DriverDetail />} /> */}
        </Route>
        {/* <Route path="/home" element={<Home />} /> */}
      </Routes>
    </div>
  );
}

export default App;
