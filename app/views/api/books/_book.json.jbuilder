json.extract! book,
  :id, :title, :description,
  :publisher, :publish_date, :author
json.coverUrl book.cover_url
json.authorId book.author_id
