json.shelf do
  json.extract! shelf, :id, :name
  json.userId shelf.user_id
  json.book_ids shelf.books.pluck(:id)
end 
