import merge from 'lodash/merge';

import {
  RECEIVE_SHELF,
  RECEIVE_SHELVES,
  DELETE_SHELF
} from '../actions/shelf_actions';

const shelvesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_SHELVES:
      return merge({}, action.shelves);
    case RECEIVE_SHELF:
      return merge({}, state, {[action.payload.shelf.id]: action.payload.shelf});
    case DELETE_SHELF:
      let newState = merge({}, state);
      delete newState[action.shelf.id];
      return newState;
    default:
      return state;
  }
};

export default shelvesReducer;
