import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { fetchBook, fetchBooks } from './actions/books_actions';
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
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
});

window.fetchBook = fetchBook;
window.fetchBooks = fetchBooks;
