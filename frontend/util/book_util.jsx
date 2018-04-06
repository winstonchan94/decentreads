export const fetchBook = bookId => (
  $.ajax({
    method: "GET",
    url: `/api/books/${bookId}`
  })
);
