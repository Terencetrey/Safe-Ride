import { Link } from "react-router-dom";


function NavBar({ user, setUser }) {
  // Handle Function for logout click in navbar
  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser("");
      }
    });
  }

  return (
    <>
      <nav>
       
        <br />
        <ul id="menuList">
          <li id="user_id">
            <Link to="/account"> ACCOUNT, {""}</Link>
          </li>
          <li>
            <Link to="/" onClick={handleLogoutClick} className="logout">
              LOGOUT
            </Link>
          </li>
        </ul>
      </nav>
    </>
  );
}
export default NavBar;
