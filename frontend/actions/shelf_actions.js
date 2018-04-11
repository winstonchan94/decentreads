import * as APIUtil from '../util/shelf_util';

export const RECEIVE_SHELVES = 'RECEIVE_SHELVES';
export const RECEIVE_SHELF = 'RECEIVE_SHELF';

export const receiveShelves = shelves => ({
  type: RECEIVE_SHELVES,
  shelves
});

export const receiveShelf = shelf => ({
  type: RECEIVE_SHELF,
  shelf
});

export const requestShelves = (userId) => dispatch => (
  APIUtil.fetchShelves(userId).then(shelves => (
    dispatch(receiveShelves(shelves))
  ))
);

export const requestShelf = shelfId => dispatch => (
  APIUtil.fetchShelf(shelfId).then(shelf => (
    dispatch(receiveShelf(shelf))
  ))
);

export const createShelf = shelf => dispatch => (
  APIUtil.createShelf(shelf).then(shelf => (
    dispatch(receiveShelf(shelf))
  ))
);
