import React from "react";
// import { Routes, Route } from "react-router-dom";
import SideBar from "./SideBar";
import MapContainer from "./MapContainer";
import NavBar from "./NavBar";
import SearchBar from "./SearchBar";
import Account from "./Account";
import { Routes, Route } from "react-router-dom";



const trips = [
  { id: "1", name: "This first trip is about React" },
  { id: "2", name: "This next trip is about Preact" },
  { id: "3", name: "We have yet another React trip!" },
  { id: "4", name: "This is the fourth and final trip" },
];

const { search } = window.location;
const query = new URLSearchParams(search).get("s");

const filterTrips = (trips, query) => {
  if (!query) {
    return trips;
  }

  return trips.filter((trip) => {
    const tripName = trip.name.toLowerCase();
    return tripName.includes(query);
  });
};


function DriverDashboard() {
const { search } = window.location;
const query = new URLSearchParams(search).get("s");
const filteredTrips = filterTrips(trips, query);





  <div>
    <SearchBar />
    <ul>
      {filteredTrips.map((trip) => (
        <li key={trip.key}>{trip.name}</li>
      ))}
    </ul>
  </div>;
  // const [trips, setTrips] = useState([]);

  return (
    <div>
      <Routes>
      {/* <Route path="/sidebar" element={<SideBar />} /> */}
      <NavBar />
      <SearchBar />
      <MapContainer />
      <SideBar />

      

      <Route path="/account" element={<Account />} />
      </Routes>
      {/* </Routes> */}
    </div>
  );
}

export default DriverDashboard;
