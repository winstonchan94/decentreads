import * as APIUtil from '../util/book_util';

export const RECEIVE_BOOKS = 'RECEIVE_BOOKS';
export const RECEIVE_BOOK = 'RECEIVE_BOOK';

export const receiveBooks = books => ({
  type: RECEIVE_BOOKS,
  books
});

// will need to change this one to payload destructured
export const receiveBook = payload => ({
  type: RECEIVE_BOOK,
  payload,
});

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
