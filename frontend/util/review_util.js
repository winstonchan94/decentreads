export const fetchReviews = (bookId) => (
  $.ajax({
    url: `api/books/${bookId}/reviews`,
    method: `GET`
  })
);
