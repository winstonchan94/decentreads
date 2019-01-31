import { connect } from 'react-redux';
import SplashBanner from './splash_page';

const mapStateToProps = (state) => {
  return {
    currentUser: state.session.currentUser
  };
};

export default connect (mapStateToProps, null)(SplashBanner);
