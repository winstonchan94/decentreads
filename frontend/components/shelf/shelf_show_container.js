import { connect } from 'react-redux';

import { requestShelf } from '../../actions/shelf_actions';
import { selectShelf, selectBooks} from '../../reducers/selectors';
import ShelfShow from './shelf_show';

//destructured from ownProps
const mapStateToProps = (state, { match }) => {
  const books = selectBooks(state);
  const shelfId = parseInt(match.params.shelfId);
  const shelf = selectShelf(state, match.params.shelfId);
  return {
    books,
    shelfId,
    shelf
  };
};

const mapDispatchToProps = dispatch => ({
  requestShelf: shelfId => dispatch(requestShelf(shelfId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ShelfShow);
