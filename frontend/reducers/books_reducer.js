import merge from 'lodash/merge';

import {
  RECEIVE_BOOK,
  RECEIVE_BOOKS,
} from '../actions/books_actions';

const booksReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_BOOKS:
      return merge({}, state, action.books);
    case RECEIVE_BOOK:
      return merge({}, state, {[action.book.id]: action.book});
    default:
      return state;
  }
};

export default booksReducer; 
