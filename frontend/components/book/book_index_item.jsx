import React from 'react';
import { Link } from 'react-router-dom';

//add aws paperclip whatever

const BookIndexItem = ( { book } ) => (
    <li key={book.id}>
      <Link className="book-list-link" to={`/books/${book.id}`}>
        <img className="book-list-cover" src={book.coverUrl}></img>
        <span>{book.title}</span>
      </Link>
    </li>
);

export default BookIndexItem;
