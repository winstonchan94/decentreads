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
          <ul className="shelf-list">
            <li className="shelf-list-item">
              <Link className="shelf-list-link"
                to={`/mybooks/all`}>All ({this.props.currentUser.bookIds.length})</Link>
            </li>
            {
              shelves.map(
                shelf => {
                  if (!['Read', 'Currently Reading', 'Want to Read'].includes(shelf.name))
                    {
                      return (<li key={shelf.id} className="shelf-list-item">
                        <Link
                          className="shelf-list-link"
                          to={`/mybooks/shelf/${shelf.id}`}>{shelf.name} ({shelf.bookIds.length})</Link>
                        <button
                          className="shelf-delete-button"
                          onClick={() => {
                            this.props.destroyShelf(shelf.id);
                          }}>x</button>
                      </li>);
                    }
                  else {
                      return (<li key={shelf.id} className="shelf-list-item">
                        <Link className="shelf-list-link" to={`/mybooks/shelf/${shelf.id}`}>{shelf.name} ({shelf.bookIds.length})</Link>
                      </li>);
                }
              })
            }

          </ul>
          <ShelfFormContainer />
        </nav>
      );
    }
  }

}

export default SideBar;
