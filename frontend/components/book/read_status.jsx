import React from 'react';
import { values } from 'lodash';



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


  render() {

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
        <form className="read-status-form" onSubmit={this.handleSubmit}>
          <select onChange={this.update('shelfId')}>
            <option value="" disabled selected>Select Shelf</option>
            {options}
          </select>

        </form>
      );
    }
}

//          <input type="submit" value="Add to Shelf" className="read-status-button"/>
export default ReadStatus;
