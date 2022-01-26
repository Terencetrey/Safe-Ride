import React from "react";
import { useNavigate } from "react-router-dom";
// import SideBar from "./SideBar";
import MapContainer from "./MapContainer";
import NavBar from "./NavBar";
import SearchBar from "./SearchBar";
import {useState, useEffect} from 'react'
import Select from 'react-select'

function PasssengerDashboard({user}) {
  let navigate = useNavigate();
  const [allTrips, setAllTrips] = useState([])
  const [passengerTrip, setPassengerTrip] = useState(null)
  const driversList = allTrips?.map((trip) => ({value: trip.driver_id, label: trip.driver.first_name}))
  console.log(driversList)

  useEffect(() => {
    fetch('/trips')
    .then((r) =>r.json())
    .then((data) => setAllTrips(data))
  },[])
 
  function driverClick() {
    navigate("/driverdashboard");
  }

  function handleGetTrip() {
    const userTrip = allTrips?.filter((trip) => trip.passenger_id === user.id);
    setPassengerTrip(userTrip)
  }

  // useEffect(() => {
  //   fetch("/trips")
  //     .then((r) => r.json())
  //     .then((data) => setAllTrips(data));
  // }, []);

console.log(passengerTrip)
// const drivers= [ 


//  { value: 1, label: "Terence" },
//   { value: 2, label: "Beyonce" },
//   { value: 3, label: "Tatiana" },
//   { value: 4, label: "Shykway" },
//   { value: 5, label: "Rihana" },
//   { value: 6, label: "Michelle" },
//   { value: 7, label: "Shaniae" },
//   { value: 8, label: "Susan" },
//   { value: 9, label: "Lisa" },
//   { value: 10, label: "Barbara" },
//   { value: 11, label: "Megan" },
//   { value: 12, label: "Susan" }];

const [driver, setDriver] = useState(null)
// useEffect(() => {
//   fetch("/drivers")
//     .then((r) => r.json())
//     .then((data) => setDriver(data));
// }, []);

// const selectDriver = driver.map((r) => {
//  return <option value={r.id}>{r.first_name}</option>;
// });
console.log(driver)





  return (
    <>
      {/* <Routes> */}
      {/* <Route path="/sidebar" element={<SideBar />} /> */}

      <NavBar />
      <SearchBar />
      <button onClick={driverClick}>driver</button>
      <button onClick={handleGetTrip}>get trip</button>

      <MapContainer />
      {/* <SideBar /> */}
      <div style={{ backgroundColor: "light-gray" }}>
        {passengerTrip && (
          <p>
            Please meeet driver {passengerTrip[0].driver.first_name}{" "}
            {passengerTrip[0].driver.last_name}
          </p>
        )}
        {driver && <p>Please meeet driver {driver.label}</p>}
      </div>
      <form>
        <label>
          <span>Trips:</span>
          <Select
            className="select"
            name="trips"
            onChange={(option) => setDriver(option)}
            value={driver}
            options={driversList}
          />
        </label>
      </form>
      {/* </Routes> */}
    </>
  );
}

export default PasssengerDashboard;
