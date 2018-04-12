export const fetchShelves = (userId) => (
  $.ajax({
    method: 'GET',
    url: `api/users/${userId}/shelves`,
  })
);

export const fetchShelf = shelfId => (
  $.ajax({
    method: "GET",
    url: `api/shelves/${shelfId}`
  })
);

export const createShelf = shelf => (
  $.ajax({
    method: "POST",
    url: `api/shelves`,
    data: { shelf },
  })
);

export const deleteShelf = shelfId => (
  $.ajax({
    method: "DELETE",
    url: `api/shelves/${shelfId}`
  })
);

export const createShelving = ({ bookId, shelfId }) => (
  $.ajax({
    method: "POST",
    url: `api/shelvings`,
    data: {shelving:{ book_id: bookId, shelf_id: shelfId }}
  })
);

export const destroyShelving = ({ bookId, shelfId }) => (
  $.ajax({
    method: "DELETE",
    url: `api/shelvings`,
    data: {shelving: { shelf_id: shelfId, book_id: bookId } }
  })
);
