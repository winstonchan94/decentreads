@shelves.each do |shelf|
  json.set! shelf.id do
    json.extract! shelf, :id, :name 
  end
end
