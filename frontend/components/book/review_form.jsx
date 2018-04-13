import React from 'react';
import { withRouter } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: '',
      rating: null,
      bookId: this.props.book.id,
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
    const review = Object.assign({}, {body: this.state.body, rating: this.state.rating});
    this.hideForm();

    this.props.processForm(this.props.book.id, review);
    this.setState({body: ''});
  }


  render() {
    if (this.state.toggleForm === false) {
      return (
        <button className="review-form-toggle-button"onClick={this.showForm}>Add a Review</button>
      ); } else {
      return (
        <form className="review-form-box" onSubmit={this.handleSubmit}>
          <h5>Review for <strong>{this.props.book.title}</strong>:</h5>
          <select onChange={this.update('rating')}>
            <option value="" disabled selected>Rate Book</option>
            <option value={1}>1</option>
            <option value={2}>2</option>
            <option value={3}>3</option>
            <option value={4}>4</option>
            <option value={5}>5</option>
          </select>
          <textarea
            value={this.state.body}
            onChange={this.update('body')}
            className="review-form-textarea"
          ></textarea>
        <input type="submit" value="Submit Review" className="review-form-button"/>
        </form>
      );
    }
  }
}

export default withRouter(ReviewForm);
