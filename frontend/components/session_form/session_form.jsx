import React from 'react';
import { withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
      name: '',
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    if (this.props.formType === 'Sign Up for') {
      this.nameField = (
        <label>Name
          <br/>
          <input type="text"
            value={this.state.name}
            onChange={this.update('name')}
            className="session-input"
          />
          <br/>
        </label>
      );
      this.alternatePrompt = (
        <h5>Already a member?</h5>
      );
    } else {
      this.alternatePrompt = (
        <h5>Not a member?</h5>
      );
    }
    return (
      <div className="session-form-container">
        <form onSubmit={this.handleSubmit} className="session-form-box">
          <h3>{this.props.formType} DecentReads</h3>
          <br/>
          {this.renderErrors()}
          <div className="session-form">
            <br/>
            {this.nameField}
            <label>Email
              <br/>
              <input type="text"
                value={this.state.email}
                onChange={this.update('email')}
                className="session-input"
              />
            </label>
            <br/>
            <label>Password
              <br/>
              <input type="password"
                value={this.state.password}
                onChange={this.update('password')}
                className="session-input"
              />
            </label>
            <br/>
            <input className="session-submit" type="submit" value={this.props.formTypeShort} />
            <br/>
          </div>
          <ul className="form-bottom">
            <li>{this.alternatePrompt}</li>
            <li>{this.props.navLink}</li>
          </ul>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionForm);
