export const fetchBooks = () => (
  $.ajax({
    method: 'GET',
    url: 'api/books',
  })
);

export const fetchBook = bookId => (
  $.ajax({
    method: "GET",
    url: `/api/books/${bookId}`
  })
);

export const createReview = (bookId, review) => {
  return (
    $.ajax({
      method: "POST",
      url: `/api/books/${bookId}/reviews`,
      data: { body: review.body, rating: review.rating }
    })
  );
};

export const editReview = (bookId, review) => (
  $.ajax({
    method: "PATCH",
    url: `/api/books/${bookId}/reviews/${review.id}`,
    data: { book_id: bookId, body: review.body, rating: review.rating}
  })
);
