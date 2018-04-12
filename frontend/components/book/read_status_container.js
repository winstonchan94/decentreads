import { connect } from 'react-redux';

import { addShelving } from '../../actions/shelf_actions';

import ReadStatus from './read_status';

//destructured from ownProps
const mapStateToProps = (state) => ({
  shelves: state.session.currentUser.shelves
});

const mapDispatchToProps = dispatch => ({
  processForm: (bookId, shelfId) => dispatch(addShelving(bookId, shelfId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReadStatus);
