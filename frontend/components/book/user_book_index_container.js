import { connect } from 'react-redux';
import { selectAllUserBooks } from '../../reducers/selectors';
import {
  receiveBooks,
  requestBooks
} from '../../actions/books_actions';
import BookIndex from './book_index';

const mapStateToProps = state => ({
  listType: "All",
  books: selectAllUserBooks(state.session.currentUser, state.entities.books),
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  requestBooks: () => dispatch(requestBooks())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookIndex);
