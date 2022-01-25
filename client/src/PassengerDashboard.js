import React from "react";
import MapContainer from "./MapContainer";
import Account from "./Account";
import { Routes, Route } from "react-router-dom";





function PassengerDashboard() {
  return (
    <div>
      <Routes>
        <Route path="/account" element={<Account />} />
        <MapContainer />
      </Routes>
    </div>
  );
}

export default PassengerDashboard;
