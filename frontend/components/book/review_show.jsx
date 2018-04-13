import React from 'react';

const Review = ({ review }) => {
  const { rating, body, reviewer } = review;
  return (
    <li className="review-details">
      <h5 className="review-item-header"><strong className="reviewer-name">{reviewer.name}</strong> rated it {rating}</h5>
      <p className="review-body">{body}</p>
    </li>
  );
};

export default Review;
