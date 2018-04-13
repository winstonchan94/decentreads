json.book do
  json.partial! 'api/books/book', book: @book
  json.reviewIds @book.reviews.pluck(:id)
  json.averageScore @book.average_score
end

json.reviews do
  @book.reviews.each do |review|
    json.set! review.id do
      json.body review.body
      json.rating review.rating
      json.bookId review.book_id
      json.userId review.user_id
      json.reviewer review.user
    end
  end
end
