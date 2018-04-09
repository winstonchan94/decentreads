import { values } from 'lodash';

export const selectBooks = (state) => (
  values(state.entities.books)
);

export const selectBook = (state, id) => (
  state.entities.books[id]
);
