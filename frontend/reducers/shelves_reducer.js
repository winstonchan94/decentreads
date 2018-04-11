import merge from 'lodash/merge';

import {
  RECEIVE_SHELF,
  RECEIVE_SHELVES,
} from '../actions/shelf_actions';

const shelvesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_SHELVES:
      return merge({}, state, action.shelves);
    case RECEIVE_SHELF:
      return merge({}, state, {[action.shelf.id]: action.shelf});
    default:
      return state;
  }
};

export default shelvesReducer;
