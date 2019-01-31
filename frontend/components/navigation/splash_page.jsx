import React from 'react';
import { Link } from 'react-router-dom';
import SignupFormContainer from '../session_form/signup_form_container';


class SplashBanner extends React.Component {
  render() {
    if (this.props.currentUser) {
      return "";
    } else {
      return (
        <div className="splash-banner-box">
          <ul className="splash-banner-slogan">
            <li className="banner-logo">
              DecentReads
            </li>
            <li className="banner-subslogan">
              You'll never be disappointed.
            </li>
          </ul>
          <span className="splash-signup"><SignupFormContainer/></span>
        </div>
      );
    }
  }

}

export default SplashBanner;
