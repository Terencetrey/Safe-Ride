import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

import MapContainer from "./MapContainer";
import NavBar from "./NavBar";

import { useEffect } from "react";

function DriverDashboard({ user }) {
  const [hasTrip, setHasTrip] = useState(false);
  const [allTrips, setAllTrips] = useState([]);
  const [driverTrip, setDriverTrip] = useState(null);

  let navigate = useNavigate();

  useEffect(() => {
    fetch("/trips")
      .then((r) => r.json())
      .then((data) => setAllTrips(data));
  }, []);

  function handleCancle() {
    fetch(`/trips/${driverTrip.id}`, { method: "DELETE" })
      //  .then((r) => r.json())
      .then(() => setDriverTrip(null), setHasTrip(false));
  }

  function handleEndTrip() {
    fetch(`/trips/${driverTrip.id}`, { method: "DELETE" })
      //  .then((r) => r.json())
      .then(() => setDriverTrip(null), setHasTrip(false));
  }

  function handleGetTrip() {
    const userTrip = allTrips?.filter((trip) => trip.driver_id === user.id);

    setDriverTrip(userTrip[Math.floor(Math.random() * userTrip.length)]);
    setHasTrip(true);
  }

  function driverClick() {
    navigate("/passengerdashboard");
  }
  
  return (
    <>
      {/* <Routes> */}
      {/* <Route path="/sidebar" element={<SideBar />} /> */}
      {hasTrip ? <p>🟢</p> : <p>🛑</p>}
      <NavBar />

      <button onClick={driverClick}>Passneger Dashboard</button>
      <button onClick={handleGetTrip}>Find Passenger</button>
      <button onClick={handleCancle}>Cancel</button>
      <button onClick={handleEndTrip}>End Trip</button>
      

      
      {driverTrip && (
        <p style={{ backgroundColor: "light-gray" }}>
          Please meeet passenger {driverTrip.passenger.first_name}{" "}
          {driverTrip.passenger.last_name}
        </p>
      )}
      <MapContainer />
      {/* {driverTrip && (
        <p style={{ backgroundColor: "light-gray" }}>
          Please meeet passenger {driverTrip.passenger.first_name}{" "}
          {driverTrip.passenger.last_name}
        </p>
      )} */}

      {/* </Routes> */}
    </>
  );
}

export default DriverDashboard;
