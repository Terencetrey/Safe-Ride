import { Link } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import Logo from "./Logo.png";


function NavBar({ user, setUser }) {
  let navigate = useNavigate();
  // Handle Function for logout click in navbar
  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" })
      .then((r) => r.json())
      .then(setUser(null));
       navigate("/");

    
  }

  return (
    <>
      <nav>
        <h1>
          <img src={Logo} alt="Safe Rides" />
          <p>Safe Rides</p>
        </h1>
        <br />
        <ul id="account">
          <li id="user">
            <Link to="/account"> ACCOUNT, {user}</Link>
          </li>
          <Link to="/" onClick={handleLogoutClick} className="logout">
            LOGOUT
          </Link>
        </ul>
      </nav>
    </>
  );
}
export default NavBar;
