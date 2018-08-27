import React from 'react';
import { Link } from 'react-router-dom';

class AdBar extends React.Component {

  render() {
    return (
        <ul className="ad-list">
          <li className="ad-list-item">
            <a className="ad-list-link" href="https://www.linkedin.com/in/winstonchan94/">
              <img className="clickbait-img" src="https://res.cloudinary.com/ddcscckq0/image/upload/v1535395049/clickbait.jpg"></img>
              Scientists baffled by the quality of this developer's LinkedIn profile!
            </a>
          </li>
          <li className="ad-list-item">
            <a className="ad-list-link" href="https://github.com/winstonchan94">
              <img className="clickbait-img" src="https://res.cloudinary.com/ddcscckq0/image/upload/v1535395049/clickbait2.webp"></img>
              Countless others have drawn inspiration from this programmer's Github!
            </a>
          </li>
        </ul>
    );
  }

}

export default AdBar;
