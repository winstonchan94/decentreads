import React from 'react';
import { Link } from 'react-router-dom';

const logo = (
  <h1 className="nav-logo">DecentReads</h1>
);

const sessionLinks = () => (
  <nav className="logged-out-nav">
    { logo }
    <ul className="logged-out-buttons" >
      <li>
        <Link to="/login">Log In</Link>
      </li>
      <li>
        <Link to="/signup">Sign up</Link>
      </li>
    </ul>
  </nav>
);

const personalGreeting = (currentUser, logout) => (
	<nav className="logged-in-nav">
    { logo }
    <h2 className="current-user">{currentUser.name}</h2>
    <button className="logout-button" onClick={logout}>Log Out</button>
	</nav>
);

const NavBar = ({ currentUser, logout }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
);

export default NavBar;