/* Library Management System
 Create a system to manage books in a library.
 Implement a Book class with properties like title, author, isbn, and isAvailable.
 Implement a Library class with methods:- addBook(Book book): Adds a book to the library.
 - borrowBook(String isbn): Marks a book as borrowed if available.
 - returnBook(String isbn): Marks a book as available again.
 - searchByTitle(String title): Returns books matching the title.
 Ensure that the system correctly updates the book's availability.
 */
void main() {
  Library library = Library();

  library.addBook(
      Book(title: 'Clean Code', author: 'Robert C. Martin', isbn: 'a1'));
  library.addBook(Book(
      title: 'Grokking Algorithms', author: 'Aditya Y. Bhargava', isbn: 'a2'));
  library.addBook(Book(
      title: 'Design Patterns',
      author: 'Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides',
      isbn: 'a3'));

  library.borrowBook('a3');
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;
  Book({
    required this.title,
    required this.author,
    required this.isbn,
    this.isAvailable = true,
  });
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Library after adding is: ${book.title}');
  }

  void borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn ==isbn) {
        if (isb) {
          
        } else {
          
        }
      
    }
  }
}
