import React from 'react';
import { Link } from 'react-router-dom';
import BookDetail from './book_detail';
import ReviewShow from './review_show';
import ReviewFormContainer from './review_form_container';
import { values } from 'lodash';
import { ProtectedRoute } from '../../util/route_util';

class BookShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

    this.props.requestBook(this.props.bookId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.bookId !== nextProps.bookId) {
      this.props.requestBook(nextProps.bookId);
    }
  }

  render() {
    let reviews = values(this.props.reviews).filter(el => el.bookId == this.props.book.id);
    let reviewList;
    if (reviews) {
      reviewList = reviews.reverse().map((review, idx) => (<ReviewShow key={idx} review={review}/>));
    }

    let reviewForm;
    if (this.props.currentUser) {
      reviewForm = (<ReviewFormContainer book={this.props.book}/>);
    }

    if (!this.props.book || !this.props.reviews) {
      return (<p>loading!</p>);
    } else {
    return(
      <div className="single-book-show">

          <BookDetail book={this.props.book} currentUser={this.props.currentUser}/>
          {reviewForm}
          <div className="reviews-box">
            <h1 className="reviews-box-header">Community Reviews</h1>
            <ul className="reviews-list">
              {reviewList}
            </ul>
          </div>
      </div>
    );}
  }
}




export default BookShow;
