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
