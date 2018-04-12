@shelves.each do |shelf|
  json.set! shelf.id do
    json.extract! shelf, :id, :name
    json.bookIds shelf.books.pluck(:id)
  end
end
