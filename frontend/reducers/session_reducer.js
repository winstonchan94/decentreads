import merge from 'lodash/merge';

import {
  RECEIVE_CURRENT_USER,
} from '../actions/session_actions';

import {
  RECEIVE_SHELF,
  DELETE_SHELF,
  ADD_SHELVING
} from '../actions/shelf_actions';

const _nullUser = Object.freeze({
  currentUser: null
});

const sessionReducer = (state = _nullUser, action) => {
  Object.freeze(state);
  let updateUser;
  let newState;
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return merge({}, { currentUser });
    case RECEIVE_SHELF:
      updateUser = merge({}, state.currentUser.shelves, {[action.payload.shelf.id]: action.payload.shelf});
      return merge({}, state, {currentUser: {shelves:updateUser}});
    case DELETE_SHELF:
      newState = merge({}, state);
      delete newState.currentUser.shelves[action.shelf.id];
      return newState;
    case ADD_SHELVING:
      newState = merge({}, state);
      newState.currentUser.bookIds.unshift(action.bookId);
      return newState;
    default:
      return state;
  }
};

export default sessionReducer;
