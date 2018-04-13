import { connect } from 'react-redux';

import { addShelving } from '../../actions/shelf_actions';

import ReadStatus from './read_status';

//destructured from ownProps
const mapStateToProps = (state) => {
  if (state.session.curentUser) {
    return ({
      shelves: state.session.currentUser.shelves
    });
  } else {
    return ({});
  }
};

const mapDispatchToProps = dispatch => ({
  processForm: (bookId, shelfId) => dispatch(addShelving(bookId, shelfId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReadStatus);
