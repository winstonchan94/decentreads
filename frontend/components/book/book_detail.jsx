import React from 'react';

//will need to destructure once reviews
const BookDetail = ({book}) => {
  const description = book.description.map(para => (<p>{para}</p>));
  return(
    <div className='book-details'>
      <header>
        <h2 className="book-title">{book.title}</h2>
        <p className="book-author">by {book.author.name}</p>
      </header>
      <p className="book-description">{description}<br/></p>
      <p className="book-publish-info">Published {book.publish_date} by {book.publisher}</p>
    </div>
  );
};

export default BookDetail;
