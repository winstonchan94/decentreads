json.extract! user, :id, :email, :name
json.bookIds user.books.pluck(:id).uniq
json.shelves do
  user.shelves.each do |shelf|
    json.set! shelf.id do
      json.id shelf.id
      json.name shelf.name
      json.bookIds shelf.books.pluck(:id)
    end
  end
end
