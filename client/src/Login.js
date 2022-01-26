import React, { useState } from "react";
import { Link } from "react-router-dom";
import Logo from "./Logo.png";

function Login({ handleLogin }) {
  const [phone_number, setPhoneNumber] = useState("");
  const [password, setPassword] = useState("");

  function handleSubmit(e) {
    e.preventDefault();

    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ phone_number, password }),
    }).then((r) => {
      if (r.ok) {
        // console.log("hello");

        r.json().then((user) => handleLogin(user));
      }
    });
  }

  return (
    <div className="loginPage">
      <div className="loginContainerL">
        <div className="stack"></div>
        <br />

        <div className="login">
          <div className="login__logo">
            <img src={Logo} alt="Safe Rides" />
          </div>
          <form id="loginForm" onSubmit={handleSubmit}>
            <div>
              <p>Get moving with Safe Rides</p>
            </div>
            <p>Email or phone number</p>
            <input
              className="phone_number"
              type="text"
              onChange={(e) => setPhoneNumber(e.target.value)}
              placeholder="PhoneNumber"
            />
            <p>PASSWORD</p>
            <input
              className="password"
              type="password"
              onChange={(e) => setPassword(e.target.value)}
              placeholder="password"
            />

            <h5></h5>
            <button className="signInL" type="submit">
              SIGN IN
            </button>
            <Link to="/SignUp" className="signMessage">
              <h5>Don't have an account yet? Sign up.</h5>
            </Link>
          </form>
        </div>
      </div>
    </div>
  );
}

export default Login;
