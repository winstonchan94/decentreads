import React from 'react';
import { Link } from 'react-router-dom';


const logo = (
  <Link className="nav-logo" to="/"><h3>DecentReads</h3></Link>
);

//change route after setup
const home = (
  <Link className="nav-home" to={`/`}><h5>Home</h5></Link>
);
const myBooks = (
  <Link className="nav-my-books" to={`/mybooks`}><h5>My Books</h5></Link>
);

const sessionLinks = (demoLogin) => (
  <nav className="logged-out-nav">
    { logo }
    { home }
    { myBooks }
    <ul className="logged-out-buttons" >

        <button onClick={demoLogin} className="demo-button">DEMO</button>

      <li>
        <Link className="log-button" to="/login">Log In</Link>
      </li>
      <li>
        <Link className="log-button" to="/signup">Sign up</Link>
      </li>
    </ul>
  </nav>
);

const personalGreeting = (currentUser, logout) => (
	<nav className="logged-in-nav">
    { logo }
    { home }
    { myBooks }
    <ul className="logged-in-stuff">
      <li>
        <h2 className="current-user">{currentUser.name}</h2>
      </li>
      <li>
        <button className="logout-button" onClick={logout}>Log Out</button>
      </li>
    </ul>
	</nav>
);

const NavBar = ({ currentUser, logout, demoLogin }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks(demoLogin)
);

export default NavBar;
