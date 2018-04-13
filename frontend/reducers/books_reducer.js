import merge from 'lodash/merge';

import {
  RECEIVE_BOOK,
  RECEIVE_BOOKS,
} from '../actions/book_actions';

import { RECEIVE_SHELF, ADD_SHELVING } from '../actions/shelf_actions';

const booksReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_BOOKS:
      return merge({}, state.session, action.books);
    case RECEIVE_BOOK:
      return merge({}, state, {[action.payload.book.id]: action.payload.book});
    case RECEIVE_SHELF:
      return merge({}, state, action.payload.books);
    default:
      return state;
  }
};

export default booksReducer;
