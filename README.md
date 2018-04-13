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

#### Dynamic book shelving

## Future Plans
Future updates will include but are not limited to:

* Implementing book search
* Implementing user search
* Implementing user profiles
* Integrating shelvings with reviews: i.e. adding books to 'Read' shelf upon review submission
  * Removal of books from shelves manually, whereupon associated reviews will be destroyed as well
* Implementing a recommendation list via backend algorithm to be rendered to logged in users
* Caching for performance
