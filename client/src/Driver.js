import React from "react";
import { Navigate, Outlet } from "react-router-dom";

import { isDriver } from "./Auth";

function Driver(props) {
  if (!isDriver()) {
    return <Navigate to="/driverdashboard" />;
  }

  return <Outlet />;
}

export default Driver;
