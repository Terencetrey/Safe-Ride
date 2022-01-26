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
      <div className="navcontainer">
        <nav>
          <ul id="account">
            <h1></h1>
            <img src={Logo} alt="Safe Rides" />
            <p>Safe Rides</p>

            <Link to="/account">ACCOUNT {user}</Link>

            <Link to="/" onClick={handleLogoutClick} className="logout">
              LOGOUT
            </Link>
          </ul>
        </nav>
      </div>
    </>
  );
}
export default NavBar;
