import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { requestBook, requestBooks } from './actions/books_actions';
import { requestShelf, requestShelves } from './actions/shelf_actions';
document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  window.dispatch = store.dispatch;
  window.getState = store.getState;
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
});

window.requestShelf = requestShelf;
window.requestShelves = requestShelves; 
window.requestBook = requestBook;
window.requestBooks = requestBooks;
