import * as APIUtil from '../util/book_util';

export const RECEIVE_BOOKS = 'RECEIVE_BOOKS';
export const RECEIVE_BOOK = 'RECEIVE_BOOK';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const CLEAR_REVIEWS = 'CLEAR_REVIEWS';

export const clearReviews = () => ({
  type: CLEAR_REVIEWS
});

export const clearReviewsAction = () => dispatch => (
  dispatch(clearReviews())
);

export const receiveBooks = books => ({
  type: RECEIVE_BOOKS,
  books
});

export const receiveReview = review => ({
  type: RECEIVE_REVIEW,
  review
});
// will need to change this one to payload destructured
export const receiveBook = payload => ({
  type: RECEIVE_BOOK,
  payload,
});

export const createReview = (bookId, review) => dispatch => (
  APIUtil.createReview(bookId, review).then(review => (
    dispatch(receiveReview(review))
  ))
);

export const requestBooks = () => dispatch => (
  APIUtil.fetchBooks().then(books => (
    dispatch(receiveBooks(books))
  ))
);

export const requestBook = bookId => dispatch => (
  APIUtil.fetchBook(bookId).then(payload => (
    dispatch(receiveBook(payload))
  ))
);
export const clearBooks = () => dispatch => (
  dispatch(receiveBooks({}))
);
