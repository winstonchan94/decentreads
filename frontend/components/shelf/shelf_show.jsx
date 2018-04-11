import React, { Component } from 'react';
import { Route } from 'react-router-dom';

import BookIndexItem from '../book/book_index_item';
import BookShowContainer from '../book/book_show_container';

class ShelfShow extends React.Component {







  componentDidMount() {
    this.props.requestShelf(this.props.shelfId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.shelfId !== nextProps.shelfId) {
      this.props.clearBooks();
      this.props.requestShelf(nextProps.shelfId);
    }
  }

  render() {
    const { shelf, books } = this.props;
    if (!this.props.books || !this.props.shelf) { return <h5>loading</h5>; } else {
    return (
      <div className="book-list-box">
        <h1 className="book-list-name">{this.props.shelf.name}</h1>
        <ul className="book-list">
          {this.props.books.map(book => <BookIndexItem key={book.id} book={book} />)}
        </ul>
      </div>
    );
    }
  }
}

export default ShelfShow;
