import React from 'react';

const BookDetail = (book) => {
  return(
    <div>
      <header>
        <h2 className="book-title">{book.title}</h2>
        <h3 className="book-author">by {book.author.name}</h3>
      </header>

    </div>
  );
};

export default BookDetail;
