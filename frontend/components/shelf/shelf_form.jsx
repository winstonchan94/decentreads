import React from 'react';
import { withRouter } from 'react-router-dom';

class ShelfForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      userId: this.props.currentUser.id,
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
//shows form
  showForm() {
    this.setState({toggleForm: true});

  }

  hideForm() {
    this.setState({toggleForm: false});
  }

  handleSubmit(e) {
    e.preventDefault();
    const shelf = Object.assign({}, {name: this.state.name, user_id: this.state.userId});
    this.hideForm();
    this.props.processForm(shelf);
    this.setState({name: ''});
  }


  render() {
    if (this.state.toggleForm === false) {
      return (
        <button className="shelf-form-button"onClick={this.showForm}>Add Shelf</button>
      ); } else {
      return (
        <form onSubmit={this.handleSubmit}>
          <h5>Add a Shelf:</h5>
          <input type="text"
            value={this.state.name}
            onChange={this.update('name')}
            className="shelf-form-input"
          />
        <input type="submit" value="Add" className="shelf-form-button"/>
        </form>
      );
    }
  }
}

export default withRouter(ShelfForm);
