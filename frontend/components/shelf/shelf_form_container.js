import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { createShelf } from '../../actions/shelf_actions';
import ShelfForm from './shelf_form';

const mapStateToProps = ({ session }) => {
  return {
    currentUser: session.currentUser
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: (shelf) => dispatch(createShelf(shelf)),

  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ShelfForm);
