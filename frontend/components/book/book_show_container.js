import { connect } from 'react-redux';

import { requestBook } from '../../actions/book_actions';
import { selectBook } from '../../reducers/selectors';
import BookShow from './book_show';

//destructured from ownProps
const mapStateToProps = (state, { match }) => {
  const bookId = parseInt(match.params.bookId);
  const book = selectBook(state, match.params.bookId);
  return {
    bookId,
    book
  };
};

const mapDispatchToProps = dispatch => ({
  requestBook: id => dispatch(requestBook(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookShow);
