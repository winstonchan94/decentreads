[DecentReads](http://decent-reads.herokuapp.com)


DecentReads is a single-page web application for organizing and reviewing books. Registered users are able to use the site to shelve books according to their organizational standards, review books they have read, and browse books and reviews by other users.

## Technologies Used
 * Backend
   * Database: PostgreSQL (v 0.18)
   * Language: Ruby (v 2.5.0)
   * Routing, Controllers, and Model: Rails (v 5.1.5)
   * Authentication using BCrypt (v 3.1.7)
 * Frontend
   * React/Redux
   * Ajax requests via JQuery
   * jSON jBuilder for backend to frontend data flow
   * SCSS for styling

## Design Docs

[Wiki](https://github.com/winstonchan94/decentreads/wiki)
## Features
* Books
  * Users can browse through an index of books as well as books on their respective shelves.
  * Users can examine individual books to get general book information as well as access to user reviews and a personal review submission form
* Shelves
  * Accounts come with auto-generated default shelves
  * Users can create custom shelves for personal organizational preferences
  * Users can add books to shelves from wherever books are displayed.
* Reviews
  * Users may submit reviews for books, complete with a text body and a rating out of 5
  * Individual book pages house a list of existing reviews by users

## Functionality
#### Login-status-aware component rendering
Authentication was implemented through a combination of frontend and backend logic. On the front end, logic was implemented in order to ensure that certain components such as the Read-status Bar and the Shelves Sidebar would only be rendered to a logged-in user.

##### Logged out state sans buttons and sidebar
![Imgur](https://i.imgur.com/rPGnINk.png)
##### Logged in state with both aforementioned features
![Imgur](https://i.imgur.com/DGqolJ9.png)

This was done by making sure the session slice of state was mapped to the props of every potentially offending component, and consequently code was written to make sure the component would not be rendered if nobody was logged in, as per the following example snippet:

```javascript
let statusContainer;
if (currentUser) {
  statusContainer = (<ReadStatusContainer className="book-show-status" book={book}/>);
}
return(
  <div className="book-details-box">
    <div className="book-details-left">
      <img className="book-cover" src={book.coverUrl}></img>
      {statusContainer}
    </div>
    <div className="book-details">
      <header>
        <h2 className="book-title">{book.title}</h2>
        <p className="book-author">by {book.author.name}</p>
        <h6 className="book-avg-score">avg. rating <strong>{book.averageScore}</strong></h6>
      </header>
      <p className="book-description">{description}</p>
      <p className="book-publish-info">Published {book.publish_date} by {book.publisher}</p>
    </div>

  </div>
);
```

Similar lines of code were used on both the Book Index as well as Review Form components.

#### Default Shelves vs. Non-default deletion & shelf creation form toggle

Users have the ability to create new shelves with customized names from the side bar, as well as delete them, but are not permitted to delete default shelves. These shelves are created upon account creation and handled by the backend controllers.

![Imgur](https://i.imgur.com/QKWQdZA.png)

To achieve this, the following lines of code were written to ensure that the deletion button would not appear next to default shelves:

```
  shelves.map(
    shelf => {
      if (!['Read', 'Currently Reading', 'Want to Read'].includes(shelf.name))
        {
          return (<li key={shelf.id} className="shelf-list-item">
            <Link
              className="shelf-list-link"
              to={`/mybooks/shelf/${shelf.id}`}>{shelf.name} ({shelf.bookIds.length})</Link>
            <button
              className="shelf-delete-button"
              onClick={() => {
                this.props.destroyShelf(shelf.id);
              }}>x</button>
          </li>);
        }
```
#### Dynamic book shelving

When a user is examining a default shelf, say "Currently Reading," for example, they are able to move any of the contained books to a different default shelf. It was paramount in such a situation that said book would disappear from the current page, as the following backend code would destroy any conflicting shelvings occurring upon creation of a new shelving:

```ruby
def ensure_individuality
  defaults = ['Read', 'Currently Reading', 'Want to Read']
  @do_remove = false
  user = self.user
  encroaching_defaults = user.shelves.select do |shelf|
    defaults.include?(shelf.name) &&
    shelf.books.include?(self.book) &&
    shelf.id != self.shelf.id &&
    defaults.include?(self.shelf.name)
  end

  user.shelvings.each do |shelving|
    if (encroaching_defaults.any?{|shelf| shelf.shelvings.include?(shelving)} &&
      shelving.book_id == self.book_id &&
      defaults.include?(shelving.shelf.name))
        @shelf_to_remove_from = shelving.shelf_id
        shelving.destroy
    end
  end
end
```

To make sure shelves were visibly altered in this scenario, the following logic in the reducer for shelves was implemented:

```JavaScript
case ADD_SHELVING:
  newState = merge({}, state);
  if (action.shelfToRemoveFrom) {
    if (newState[action.shelfToRemoveFrom]) {
      delete newState[action.shelfToRemoveFrom].bookIds[newState[action.shelfToRemoveFrom].bookIds.indexOf(action.bookId)];
    }
  }
  return newState;
```
## Future Plans
Future updates will include but are not limited to:

* Implementing book search
* Implementing user search
* Implementing user profiles
* Integrating shelvings with reviews: i.e. adding books to 'Read' shelf upon review submission
  * Removal of books from shelves manually, whereupon associated reviews will be destroyed as well
* Implementing a recommendation list via backend algorithm to be rendered to logged in users
* Caching for performance
