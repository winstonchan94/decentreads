import React from 'react';
import NavBarContainer from './navigation/nav_bar_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import BookShowContainer from './book/book_show_container';
import BookIndexContainer from './book/book_index_container';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => {
  return (
    <div>
      <header>
        <NavBarContainer />
      </header>

      <Switch>
        <AuthRoute exact path="/login" component={LoginFormContainer} />
        <AuthRoute exact path="/signup" component={SignupFormContainer} />
        <Route exact path="/" component={BookIndexContainer} />
        <Route path="/books/:bookId" component={BookShowContainer} />
      </Switch>
    </div>
  );
};

export default App;
