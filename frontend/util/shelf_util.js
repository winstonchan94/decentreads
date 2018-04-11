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

export const createShelving = shelving => (
  $.ajax({
    method: "POST",
    url: `api/shelvings`,
    data: { shelving }
  })
);
