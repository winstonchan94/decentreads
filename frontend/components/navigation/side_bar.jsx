import React from 'react';
import { Link } from 'react-router-dom';
import ShelfFormContainer from '../shelf/shelf_form_container';
class SideBar extends React.Component {

  componentDidMount() {
    this.props.requestShelves(this.props.currentUser.id);
  }

  render() {
    const { shelves } = this.props;
    if (!this.props.shelves) { return 'loading'; }
    else {
      return (
        <nav className="side-bar">
          <h5>BOOKSHELVES</h5>
          <ul>
            {shelves.map(shelf => <li><Link to={`/mybooks/shelf/${shelf.id}`}>{shelf.name}</Link></li>)}
          </ul>
          <ShelfFormContainer />
        </nav>
      );
    }
  }

}

export default SideBar;
