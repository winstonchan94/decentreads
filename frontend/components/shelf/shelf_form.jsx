import React from 'react';
import { withRouter } from 'react-router-dom';

class ShelfForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      user_id: this.props.currentUser.id,
      toggleForm: false,
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.showForm = this.showForm.bind(this);
    this.hideForm = this.hideForm.bind(this);

  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  showForm() {
    this.setState({toggleForm: true});

  }

  hideForm() {
    this.setState({toggleForm: false});
  }

  handleSubmit(e) {
    e.preventDefault();
    const shelf = Object.assign({}, {name: this.state.name, user_id: this.state.user_id});
    this.props.processForm(shelf);
  }




  render() {
    if (this.state.toggleForm === false) {
      return (
        <button onClick={this.showForm}>Add Shelf</button>
      ); } else {
      return (
        <form onSubmit={this.handleSubmit, this.hideForm}>
          <input type="text"
            value={this.state.name}
            onChange={this.update('name')}
            className="shelf-form-input"
          />
          <button className="shelf-form-submit">Add Shelf</button>
        </form>
      );
    }
  }
}

export default withRouter(ShelfForm);
