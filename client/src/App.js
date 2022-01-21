import MapComponent from './MapComponent';
import React, {useState, useEffect} from 'react';


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
  <MapComponent />
  </div>
  )
}

export default App;
 