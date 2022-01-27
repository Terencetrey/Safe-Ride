import React from "react";
import { useNavigate } from "react-router-dom";
// import SideBar from "./SideBar";
import MapContainer from "./MapContainer";
import NavBar from "./NavBar";





function MainDashBoard({user}) {
let navigate = useNavigate();

  function passengerClick() {
navigate("/passengerdashboard");

  }
  function driverClick() {
navigate("/driverdashboard");

  }
  
  return (
    <>
      {/* <Routes> */}
      {/* <Route path="/sidebar" element={<SideBar />} /> */}

      <NavBar />
      <div className="DPbutton">
        <button onClick={driverClick}>driver</button>
      </div>
        <button onClick={passengerClick}>passenger</button>
      <MapContainer />
      {/* <SideBar /> */}

      {/* </Routes> */}
    </>
  );
}

export default MainDashBoard;
