json.partial! 'api/shelves/shelf', shelf: @shelf
json.books do
  @shelf.books.each do |book|
    json.set! book.id do
      json.partial! 'api/books/book', book: book 
    end
  end
end
