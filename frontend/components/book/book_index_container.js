import { connect } from 'react-redux';
import { selectBooks } from '../../reducers/selectors';
import {
  receiveBooks,
  requestBooks
} from '../../actions/books_actions';
import BookIndex from './book_index';

const mapStateToProps = state => ({
  books: selectBooks(state),
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  requestBooks: () => dispatch(requestBooks())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookIndex);
