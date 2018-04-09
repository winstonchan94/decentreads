import React from 'react';

//will need to destructure once reviews
const BookDetail = (book) => {
  debugger;
  return(
    <div>
      <header>
        <h2 className="book-title">{book.title}</h2>
        <h3 className="book-author">by {book.author.name}</h3>
      </header>
      <p className="book-description">{book.description}</p>
      <h5 className="book-publish-info">Published {book.publish_date} by {book.publisher}</h5>
    </div>
  );
};

export default BookDetail;
