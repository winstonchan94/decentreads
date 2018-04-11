import { values } from 'lodash';

export const selectBooks = (state) => (
  values(state.entities.books)
);

export const selectBook = (state, id) => (
  state.entities.books[id]
);

export const selectShelves = (state) => (
  values(state.entities.shelves)
);

export const selectShelf = (state, id) => (
  state.entities.shelves[id]
);
