import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { createReview } from '../../actions/book_actions';
import ReviewForm from './review_form';


const mapDispatchToProps = dispatch => {
  return {
    processForm: (bookId, review) => dispatch(createReview(bookId, review)),
  };
};

export default connect(null, mapDispatchToProps)(ReviewForm);
