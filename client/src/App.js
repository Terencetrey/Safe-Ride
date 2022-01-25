import React, { useState, useEffect } from "react";

import { useNavigate, Routes, Route } from "react-router-dom";

import Login from "./Login";
import SignUp from "./SignUp";
// import Account from "./Account";
import Driver from "./Driver";
import DriverDashboard from "./DriverDashboard";

import Passenger from "./Passenger";
import PassengerDashboard from "./PassengerDashboard";
import MainDashboard from "./MainDashboard";


function App() {
  // User state for login
  const [user, setUser] = useState("");
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
        <Route path="/passenger" element={<Passenger />} />
        <Route path="/passengerdashboard" element={<PassengerDashboard />} />
        <Route path="/maindashboard" element={<MainDashboard />} />
        {/* <Route path="/account" element={<Account />} /> */}
        {/* <Route path=":id" element={<PassengerDetail />} /> */}

        <Route>
          <Route path="/driver" element={<Driver />} />
          <Route path="/driverdashboard" element={<DriverDashboard />} />
          {/* <Route path=":id" element={<DriverDetail />} /> */}
        </Route>
        {/* <Route path="/home" element={<Home />} /> */}
      </Routes>
    </div>
  );
}

export default App;
