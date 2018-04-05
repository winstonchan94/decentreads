import { connect } from 'react-redux';

import { logout, login } from '../../actions/session_actions';
import NavBar from './nav_bar';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const demoUser = {email: "demo", password: "password"};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  demoLogin: () => dispatch(login(demoUser))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(NavBar);
