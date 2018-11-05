import merge from 'lodash/merge';

import {
  RECEIVE_SHELF,
  RECEIVE_SHELVES,
  DELETE_SHELF,
  ADD_SHELVING,
  REMOVE_SHELVING,
} from '../actions/shelf_actions';

const shelvesReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState;
  switch(action.type) {
    case RECEIVE_SHELVES:
      return merge({}, state.session, action.shelves);
    case RECEIVE_SHELF:
      return merge({}, state, {[action.payload.shelf.id]: action.payload.shelf});
    case DELETE_SHELF:
      newState = merge({}, state);
      delete newState[action.shelf.id];
      return newState;
    case ADD_SHELVING:
      newState = merge({}, state);
      if (action.shelfToRemoveFrom) {
        if (newState[action.shelfToRemoveFrom]) {
          delete newState[action.shelfToRemoveFrom].bookIds[newState[action.shelfToRemoveFrom].bookIds.indexOf(action.bookId)];
        }
      }
      return newState;
    case REMOVE_SHELVING:
      newState = merge({}, state);
      delete newState[action.shelfId].bookIds[newState[action.shelfId].bookIds.indexOf(action.bookId)];
      return newState;
    default:
      return state;
  }
};

export default shelvesReducer;
