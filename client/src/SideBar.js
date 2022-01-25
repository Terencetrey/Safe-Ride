import React from "react";
import "./Sidebar.css";

import Logo from "./Logo.png";



const Section = ({ children }) => {
  return (
    <div
      style={{
        borderTop: "1px solid #E8E8E8",
        padding: "15px 0",
      }}
    >
      {children}
    </div>
  );
};

const Sidebar = ({
  
}) => {
  return (
    <div className="sidebar">
      <h1>
        <img src={Logo} alt="Safe Rides" />
        <p>Safe Rides</p>
        <a>Ride Share </a>
      </h1>

      <>
        <p style={{ marginBottom: 15 }}>
           Made by{" "}
          <a href="https://github.com/Terencetrey/TerenceStephens">Terence Stephens</a>
        </p>
        <Section>
          <h2>Search </h2>
          <input
            className="Search"
            type="Trip"
            placeholder=" Trip"
          />
        </Section>
      </>
    </div>
  );
};


export default Sidebar;
