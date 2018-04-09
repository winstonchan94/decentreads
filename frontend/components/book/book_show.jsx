import React from 'react';
import { Link } from 'react-router-dom';

import BookDetail from './book_detail';
import { ProtectedRoute } from '../../util/route_util';

class BookShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestBook(this.props.bookId);
  }

  render() {
    return(
      <div className="single-book-show">
        <Link to="/">Back to books</Link>
        <div className="right-half bench-details">
          <BookDetail book={this.props.book} />
        </div>
      </div>
    );
  }
}




export default BookShow;
