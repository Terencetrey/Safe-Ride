import React from "react";
import { isPassenger } from "./Auth";
import { Navigate, Outlet } from "react-router-dom";
// import { isRider } from "../sessions/AuthService";

function Passenger(props) {
  if (!isPassenger()) {
    return <Navigate to="/passengerdashboard" />;
  }

  return <Outlet />;
}

export default Passenger;
