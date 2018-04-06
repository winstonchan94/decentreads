import { combineReducers } from 'redux';

import books from './books_reducer';
// import reviewsReducer from './reviews_reducer';

export default combineReducers({
  books,
});
