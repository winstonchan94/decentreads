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
            {
              shelves.map(
                shelf => {
                  if (!['All', 'Read', 'Currently Reading', 'Want to Read'].includes(shelf.name))
                    {
                      return (<li className="shelf-list-item">
                        <Link
                          className="shelf-list-link"
                          to={`/mybooks/shelf/${shelf.id}`}>{shelf.name}</Link>
                        <button
                          className="shelf-delete-button"
                          onClick={() => {
                            this.props.destroyShelf(shelf.id);
                            this.props.deleteShelf(shelf);
                          }}>x</button>
                      </li>);
                    }
                  else {
                      return (<li className="shelf-list-item">
                        <Link className="shelf-list-link" to={`/mybooks/shelf/${shelf.id}`}>{shelf.name}</Link>
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
