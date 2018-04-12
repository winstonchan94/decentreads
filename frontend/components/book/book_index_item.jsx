import React from 'react';
import { Link } from 'react-router-dom';
import ReadStatusContainer from './read_status_container';

//add aws paperclip whatever

const BookIndexItem = ( { book } ) => (
    <li className="book-index-item" key={book.id}>
      <Link className="book-list-link" to={`/books/${book.id}`}>
        <img className="book-list-cover" src={book.coverUrl}></img>
      </Link>
      <ReadStatusContainer className="book-list-status" book={book} />
    </li>
);

export default BookIndexItem;
