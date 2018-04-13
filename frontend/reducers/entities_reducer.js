import { combineReducers } from 'redux';

import books from './books_reducer';
import shelves from './shelves_reducer';
import reviews from './reviews_reducer';
// import reviewsReducer from './reviews_reducer';

export default combineReducers({
  books,
  reviews, 
  shelves,
});
