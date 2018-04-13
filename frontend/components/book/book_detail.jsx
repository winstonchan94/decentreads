import React from 'react';
import ReadStatusContainer from './read_status_container';
//will need to destructure once reviews

const BookDetail = ({book, currentUser}) => {
  const description = book.description.map((para, idx) => (<li key={idx}>{para}</li>));
  let statusContainer;
  if (currentUser) {
    statusContainer = (<ReadStatusContainer className="book-show-status" book={book}/>);
  }
  return(
    <div className="book-details-box">
      <div className="book-details-left">
        <img className="book-cover" src={book.coverUrl}></img>
        {statusContainer}
      </div>
      <div className="book-details">
        <header>
          <h2 className="book-title">{book.title}</h2>
          <p className="book-author">by {book.author.name}</p>
        </header>
        <p className="book-description">{description}</p>
        <p className="book-publish-info">Published {book.publish_date} by {book.publisher}</p>
      </div>

    </div>
  );
};

export default BookDetail;
