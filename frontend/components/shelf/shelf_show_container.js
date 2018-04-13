import { connect } from 'react-redux';
import { clearBooks } from '../../actions/book_actions';
import { requestShelf } from '../../actions/shelf_actions';
import { selectShelf, selectBooksFromShelf} from '../../reducers/selectors';
import ShelfShow from './shelf_show';

//destructured from ownProps
const mapStateToProps = (state, { match }) => {
  const shelfId = parseInt(match.params.shelfId);
  const shelf = selectShelf(state, match.params.shelfId);
  const currentUser = state.session.currentUser;
  let books;

  if (shelf && shelf.bookIds) {
    books = selectBooksFromShelf(shelf, state.entities.books);
  }
  return {
    books,
    shelfId,
    shelf,
    currentUser
  };
};

const mapDispatchToProps = dispatch => ({
  requestShelf: shelfId => dispatch(requestShelf(shelfId)),
  clearBooks: () => dispatch(clearBooks())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ShelfShow);
