json.extract! user, :id, :email, :name
json.shelves do
  user.shelves.each do |shelf|
    json.set! shelf.id do
      json.id shelf.id
      json.name shelf.name
    end
  end
end
