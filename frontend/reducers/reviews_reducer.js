import merge from 'lodash/merge';

import {
  RECEIVE_BOOK,
  RECEIVE_REVIEW,
} from '../actions/book_actions';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_BOOK:
      return merge({}, state, action.payload.reviews);
    default:
      return state;
  }
};

export default reviewsReducer;
