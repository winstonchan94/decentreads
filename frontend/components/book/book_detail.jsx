import React from 'react';
import ReadStatusContainer from './read_status_container';

//will need to destructure once reviews
const BookDetail = ({book}) => {
  const description = book.description.map(para => (<p>{para}</p>));
  return(
    <div className="book-details-box">
      <div className="book-details-left">
        <img className="book-cover" src={book.coverUrl}></img>
        <ReadStatusContainer className="book-show-status" book={book}/>
      </div>
      <div className="book-details">
        <header>
          <h2 className="book-title">{book.title}</h2>
          <p className="book-author">by {book.author.name}</p>
        </header>
        <strong className="book-description">{description}</strong>
        <p className="book-publish-info">Published {book.publish_date} by {book.publisher}</p>
      </div>
    </div>
  );
};

export default BookDetail;
