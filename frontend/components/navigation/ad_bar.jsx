import React from 'react';
import { Link } from 'react-router-dom';

class AdBar extends React.Component {

  render() {
    return (
        <ul className="ad-list">
          <li>
            <a className="ad-list-link" href="https://www.linkedin.com/in/winstonchan94/">
              Scientists baffled by the quality of this developer's LinkedIn profile!
            </a>
          </li>
        </ul>
    );
  }

}

export default AdBar;
