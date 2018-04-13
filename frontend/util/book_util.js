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

export const createReview = (bookId, review) => (
  $.ajax({
    method: "POST",
    url: `/api/books/${bookId}/reviews`,
    data: { review }
  })
);

export const editReview = (bookId, review) => (
  $.ajax({
    method: "PATCH",
    url: `/api/books/${bookId}/reviews/${review.id}`,
    data: { review }
  })
);
