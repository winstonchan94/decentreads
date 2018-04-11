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

  componentWillReceiveProps(nextProps) {
    if (this.props.bookId !== nextProps.bookId) {
      this.props.requestBook(nextProps.bookId);
    }
  }

  render() {
    if (!this.props.book) {
      return (<p>loading!</p>);
    } else {
    return(
      <div className="single-book-show">
        <div className="right-half bench-details">
          <BookDetail book={this.props.book} />
        </div>
      </div>
    );}
  }
}




export default BookShow;
