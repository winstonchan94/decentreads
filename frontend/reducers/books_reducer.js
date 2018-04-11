import merge from 'lodash/merge';

import {
  RECEIVE_BOOK,
  RECEIVE_BOOKS,
} from '../actions/books_actions';

import { RECEIVE_SHELF } from '../actions/shelf_actions';

const booksReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_BOOKS:
      return merge({}, action.books);
    case RECEIVE_BOOK:
      return merge({}, state, {[action.book.id]: action.book});
    case RECEIVE_SHELF:
      return merge({}, state, action.payload.books);
    default:
      return state;
  }
};

export default booksReducer;
