import React, { Component } from 'react';
import { Route } from 'react-router-dom';

import BookIndexItem from './book_index_item';
import BookShowContainer from './book_show_container';

class BookIndex extends Component {
  componentDidMount() {
    this.props.requestBooks();
  }

  render() {
    const { books } = this.props;
    if (!this.props.books) { return 'loading'; } else {
    return (
      <section className="book-list">
        <ul>
          {books.map(book => <BookIndexItem key={book.id} book={book} />)}
        </ul>
      </section>
    );
    }
  }
}

export default BookIndex;
