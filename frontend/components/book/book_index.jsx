import React, { Component } from 'react';
import { Route } from 'react-router-dom';

import SplashBanner from '../navigation/splash_page';
import BookIndexItem from './book_index_item';
import BookShowContainer from './book_show_container';

class BookIndex extends Component {
  componentDidMount() {
    this.props.requestBooks();
  }

  render() {
    const { books, currentUser, listType } = this.props;
    let splash;
    if (this.props.url === "/" && !currentUser) {
      splash = (<SplashBanner/>);
    }
    if (!this.props.books) { return 'loading'; } else {
    return (
      <div className="book-list-box">
        {splash}
        <h1 className="book-list-name">{listType}</h1>
        <ul className="book-list">
          {books.map(book => <BookIndexItem key={book.id} book={book} currentUser={currentUser}/>)}
        </ul>
      </div>
    );
    }
  }
}

export default BookIndex;
