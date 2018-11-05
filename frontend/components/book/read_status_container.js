import { connect } from 'react-redux';

import { addShelving, destroyShelving } from '../../actions/shelf_actions';

import ReadStatus from './read_status';

//destructured from ownProps
const mapStateToProps = (state) => {


  return {
    shelves: state.session.currentUser.shelves,
  };
};

const mapDispatchToProps = dispatch => ({
  processForm: (bookId, shelfId) => dispatch(addShelving(bookId, shelfId)),
  removeBook: (bookId, shelfId) => dispatch(destroyShelving(bookId, shelfId)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReadStatus);
