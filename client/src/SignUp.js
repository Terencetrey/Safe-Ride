import React, { useState } from "react";
import { Link } from "react-router-dom";




const SignUp = ({setUser}) => {
  const [first_name, setFirstName] = useState("");
  const [last_name, setLastName] = useState("");
  const [gender, setGender] = useState("");
  const [password, setPassword] = useState("");
  const [email, setEmail] = useState("");
  const [phone_number, setPhoneNumber] = useState("");
  const [passwordConfirmation, setPasswordConfirmation] = useState("");
 



  

  
  
  





  function handleSubmit(e) {
    e.preventDefault();
    fetch("/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        first_name,
        last_name,
        email,
        phone_number,
        gender,
        password,
        password_confirmation: passwordConfirmation,
      }),
    }).then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }











  

  return (
    <div className="signUpPage">
      <div className="signContainerS">
        <form className="signupFORM" onSubmit={handleSubmit}>

          <p>FIRST NAME</p>
          <input
            className="first_name"
            type="text"
            onChange={(e) => setFirstName(e.target.value)}
            placeholder="first Name"
          />

          <p>LAST NAME</p>
          <input
            className="last_name"
            type="text"
            onChange={(e) => setLastName(e.target.value)}
            placeholder="last Name"
          />

          <p>EMAIL</p>

          <input
            className="email"
            type="email"
            onChange={(e) => setEmail(e.target.value)}
            placeholder="123@gmail.com"
          />
          <p>PHONE NUMBER</p>
          <input
            className="phone_number"
            type="phone_number"
            onChange={(e) => setPhoneNumber(e.target.value)}
            placeholder="+1(999) 999-9999"
          />

          <p>Gender</p>
          <input
            className="gender"
            type="gender"
            onChange={(e) => setGender(e.target.value)}
            placeholder="Gender"
          />
        
      
          <p>PASSWORD</p>

          <input
            className="passwordSU"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="password"
          />
          <p>PASSWORD CONFIRMATION</p>

          <input
            type="password"
            id="password_confirmation"
            value={passwordConfirmation}
            onChange={(e) => setPasswordConfirmation(e.target.value)}
            autoComplete="current-password"
            placeholder="password"
          />
        

          <div id="PasswordReq">
            <p>Password Requirements</p>
            <ul>
              <li>Must be a minimum of 5 characters.</li>
              <li>Must contain letters, numbers, and symbols.</li>
              <li>Passwords must match.</li>
            </ul>
          </div>
          <button className="signUP" onClick={SignUp}>
            Sign Up
          </button>
          
          <Link to="/">
            <h5 className="closeButton">
              Already have an Account? Login here.
            </h5>
          </Link>
        </form>
      </div>
      
    </div>
  );
}

export default SignUp;