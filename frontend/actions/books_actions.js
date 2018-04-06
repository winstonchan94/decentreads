import * as APIUtil from '../util/book_util';

export const RECEIVE_BOOKS = 'RECEIVE_BOOKS';
export const RECEIVE_BOOK = 'RECEIVE_BOOK';

export const receiveBooks = books => ({
  type: RECEIVE_BOOKS,
  books
});

// will need to change this one to payload destructured
export const receiveBook = book => ({
  type: RECEIVE_BOOK,
  book,
});

export const fetchBooks = () => dispatch => (
  APIUtil.fetchBooks().then(books => (
    dispatch(receiveBooks(books))
  ))
);

export const fetchBook = bookId => dispatch => (
  APIUtil.fetchBook(bookId).then(book => (
    dispatch(receiveBook(book))
  ))
);
