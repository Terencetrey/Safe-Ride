import './App.css';
import React, {useState, useEffect} from 'react';
import Home from './Components/Home';
import Login from './Components/Login';
import Signup from './Components/Signup';
import {Routes, Route} from "react-router-dom";


function App() {
  const [currentUser, setCurrentUser] = useState(null)

  useEffect(() => {
    fetch("/me", {
      credentials: "include",
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          setCurrentUser(user);
        });
      } else {
      }
    });
  }, []);










  return (
    <div>

    {currentUser ? (
        <div>
          <Home currentUser={currentUser} setCurrentUser={setCurrentUser}/>
        </div>
      ) : (
        <div className="login-page">
          <Login
            setCurrentUser={setCurrentUser}
            currentUser={currentUser}
          />
    </div>)}

    <Routes>
    <Route path="/login" element={<Login
          setCurrentUser={setCurrentUser}
          currentUser={currentUser}
        />} />
      <Route path="/signup" element={<Signup setCurrentUser={setCurrentUser} />} />
      {/* <Route path="/" element={<Home currentUser={currentUser} />} /> */}


    </Routes>
    </div>
  );
}




export default App