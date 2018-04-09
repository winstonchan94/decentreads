import React from 'react';
import { Link } from 'react-router-dom';

//add aws paperclip whatever

const BookIndexItem = ( { book } ) => (
    <li key={book.id}>
      <Link to={`/books/${book.id}`}>
        <span>{book.title}</span>
      </Link>
    </li>
);

export default BookIndexItem;
