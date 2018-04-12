import * as APIUtil from '../util/shelf_util';

export const RECEIVE_SHELVES = 'RECEIVE_SHELVES';
export const RECEIVE_SHELF = 'RECEIVE_SHELF';
export const DELETE_SHELF = 'DELETE_SHELF';
export const ADD_SHELVING = 'ADD_SHELVING';
export const REMOVE_SHELVING = 'REMOVE_SHELVING';

export const receiveShelves = shelves => ({
  type: RECEIVE_SHELVES,
  shelves
});

export const receiveShelf = payload => ({
  type: RECEIVE_SHELF,
  payload
});

export const deleteShelf = shelf => ({
  type: DELETE_SHELF,
  shelf
});

export const addBookToShelf = (bookId, shelfId, shelfToRemoveFrom, doRemoveFrom) => ({
  type: ADD_SHELVING,
  bookId,
  shelfId,
  shelfToRemoveFrom,
  doRemoveFrom
});

export const removeBookFromShelf = (bookId, shelfId) => ({
  type: REMOVE_SHELVING,
  bookId,
  shelfId
});

export const addShelving = (bookId, shelfId) => dispatch => (
  APIUtil.createShelving({ bookId, shelfId }).then(shelving => (
    dispatch(addBookToShelf(shelving.bookId, shelving.shelfId, shelving.shelfToRemoveFrom, shelving.doRemoveFrom))
  ))
);

export const destroyShelving = (bookId, shelfId) => dispatch => (
  APIUtil.destroyShelving({bookId, shelfId}).then(shelving => (
    dispatch(removeBookFromShelf(shelving.bookId, shelving.shelfId))
  ))
);

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

export const destroyShelf = shelfId => dispatch => (
  APIUtil.deleteShelf(shelfId).then(({shelf}) => dispatch(deleteShelf(shelf)))
);
