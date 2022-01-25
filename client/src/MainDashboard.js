import React from "react";
import { useNavigate } from "react-router-dom";
import SideBar from "./SideBar";
import MapContainer from "./MapContainer";
import NavBar from "./NavBar";
import SearchBar from "./SearchBar";




function MainDashBoard() {
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
      <SearchBar />
      <button onClick={driverClick}>driver</button>
      <button onClick={passengerClick}>passenger</button>

      <MapContainer />
      <SideBar />
      
      

      {/* </Routes> */}
    </>
  );
}

export default MainDashBoard;
