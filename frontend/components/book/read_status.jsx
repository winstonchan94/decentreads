import React from 'react';
import { values } from 'lodash';

//Render dropdown menu for read status and ability to change shelves, remove book from shelf 

class ReadStatus extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      shelfId: 58,
      bookId: this.props.book.id,
      toggleForm: false,
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.showForm = this.showForm.bind(this);
    this.hideForm = this.hideForm.bind(this);
    this.handleBookRemoval = this.handleBookRemoval.bind(this);
  }

  update(field) {
    return e => {
      this.setState({[field]: e.currentTarget.value});
      setTimeout(() => {this.handleSubmit(e);}, 0);
    };

  }

  showForm() {
    this.setState({toggleForm: true});

  }

  hideForm() {
    this.setState({toggleForm: false});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.hideForm();
    this.props.processForm(this.state.bookId, this.state.shelfId);
  }

  handleBookRemoval() {
    this.props.removeBook(this.state.bookId, this.props.currentShelf);
  }

  render() {
    let removeButton;
    if (this.props.currentShelf) {
      removeButton = ( <input type="submit" value="Remove" className="read-status-button"/>);
    }
    const shelves = values(this.props.shelves);
    const defaultShelves = ['Read', 'Currently Reading', "Want to Read"];
    const options = shelves.map((shelf) =>
    {
      if (shelf.bookIds.includes(this.state.bookId) && defaultShelves.includes(shelf.name)) {
        return (<option
                className="read-status-option"
                key={shelf.id}
                selected="selected"
                value={shelf.id}>{shelf.name}</option>);
      }
      else {
        return (<option
                className="read-status-option"
                key={shelf.id}
                value={shelf.id}>{shelf.name}</option>);
      }
    }
      );
      return (
        <form className="read-status-form" onSubmit={this.handleBookRemoval}>
          <select onChange={this.update('shelfId')}>
            <option value="" disabled selected>Select Shelf</option>
            {options}
          </select>
          {removeButton}
        </form>
      );
    }
}

export default ReadStatus;
