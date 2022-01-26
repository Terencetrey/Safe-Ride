import React,{useState} from "react";
import { useNavigate } from "react-router-dom";
import SideBar from "./SideBar";
import MapContainer from "./MapContainer";
import NavBar from "./NavBar";
import SearchBar from "./SearchBar";
import { useEffect } from "react";


function DriverDashboard({user}) {
const [hasTrip, setHasTrip] = useState(false)
const [allTrips, setAllTrips] = useState([]);
const [driverTrip, setDriverTrip] = useState(null);
  let navigate = useNavigate();

 useEffect(() => {
   fetch("/trips")
     .then((r) => r.json())
     .then((data) => setAllTrips(data));
 }, []);


 function handleGetTrip() {
   const userTrip = allTrips?.filter((trip) => trip.driver_id === user.id);
   setDriverTrip(userTrip);
   setHasTrip(true);
 }



  function driverClick() {
    navigate("/passengerdashboard");
  }
console.log(hasTrip, allTrips, driverTrip)
  return (
    <>
      {/* <Routes> */}
      {/* <Route path="/sidebar" element={<SideBar />} /> */}
      {hasTrip ? <p>🟢</p> : <p>🛑</p>}
      <NavBar />
      <SearchBar />
      <button onClick={() => setHasTrip(false)}>Cancel</button>

      <button onClick={driverClick}>passenger</button>
      <MapContainer />
      <SideBar />
      <button onClick={handleGetTrip}>get trip</button>
      {driverTrip && (
        <p style={{ backgroundColor: "light-gray" }}>
          Please meeet passenger {driverTrip[0].passenger.first_name}{" "}
          {driverTrip[0].passenger.last_name}
        </p>
      )}

      {/* </Routes> */}
    </>
  );
}

export default DriverDashboard;
