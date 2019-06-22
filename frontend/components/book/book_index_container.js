import { connect } from 'react-redux';
import { selectBooks } from '../../reducers/selectors';
import {
  receiveBooks,
  requestBooks
} from '../../actions/book_actions';
import BookIndex from './book_index';
//contains the entity of all the books and information regarding said books in a list
const mapStateToProps = (state, {match}) => {
  return {
    listType: "Featured Books",
    books: selectBooks(state),
    currentUser: state.session.currentUser,
    url: match.url,
  };
};

const mapDispatchToProps = dispatch => ({
  requestBooks: () => dispatch(requestBooks())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookIndex);
