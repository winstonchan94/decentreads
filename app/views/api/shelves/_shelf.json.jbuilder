json.shelf do
  json.extract! shelf, :id, :name
  json.userId shelf.user_id
  json.bookIds shelf.books.pluck(:id)
end
