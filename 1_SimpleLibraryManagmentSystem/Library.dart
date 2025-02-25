import 'Book.dart';

class Library 
{
  final Map<String, Book> books = {};

  // Add a book to the library
  void addBook(
    {
      required String title,
      String author = 'Unknown Author',
      String genre = 'Unknown Genre',
      int year = 0
    }
  )  
  {
    books[title] = Book(title: title, author: author, year: year, genre: genre);
    print("Book added successfully.");
  }

  // Retrieve book information
  String getBookInfo({required String title}) 
  {
    if (books.containsKey(title)) 
    {
      return books[title]!.toString();
    }

    return "Book not found.";
  }

  // List all books, with ability to filter by genre
  void listAllBooks({String? genre}) 
  {
    if(books.isEmpty)
    {
      print("No books found.");
    }
    
    if(genre == null)
    {
      books.forEach((key, value) 
      {
        print(value);
      });
    } 
    else
    {
      books.forEach((key, value) 
      {
        if(value.genre == genre)
        {
          print(value);
        }
      });
    }
  }

  // List books by genre
  void listBooksByGenre() 
  {
    
  }

  // Remove a book
  bool removeBook() 
  {
  
  }
}