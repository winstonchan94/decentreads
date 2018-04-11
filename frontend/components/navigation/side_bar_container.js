import { connect } from 'react-redux';
import { selectShelves } from '../../reducers/selectors';
import { requestShelves, requestShelf, destroyShelf, deleteShelf } from '../../actions/shelf_actions';
import SideBar from './side_bar';


const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  shelves: selectShelves(state)
});


const mapDispatchToProps = dispatch => ({
  requestShelves: (userId) => dispatch(requestShelves()),
  requestShelf: (shelfId) => dispatch(requestShelf(shelfId)),
  destroyShelf: (shelfId) => dispatch(destroyShelf(shelfId)),
  deleteShelf: (shelf) => dispatch(deleteShelf(shelf)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SideBar);
