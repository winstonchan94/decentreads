import { connect } from 'react-redux';

import { requestBook, clearReviewsAction } from '../../actions/book_actions';
import { selectBook } from '../../reducers/selectors';
import BookShow from './book_show';

//destructured from ownProps
const mapStateToProps = (state, { match }) => {
  const bookId = parseInt(match.params.bookId);
  const book = selectBook(state, match.params.bookId);
  const reviews = state.entities.reviews;
  const currentUser = state.session.currentUser;
  return {
    bookId,
    book,
    reviews,
    currentUser,
  };
};

const mapDispatchToProps = dispatch => ({
  requestBook: id => dispatch(requestBook(id)),
  clearReviews: () => dispatch(clearReviewsAction())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookShow);
