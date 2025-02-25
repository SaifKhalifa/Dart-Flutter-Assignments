import 'dart:io';
import 'library.dart';

void main() {
  Library library = Library();
  
  while (true) {
    printMainMenu();
    
    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addBookInput(library);
        break;
      
      case '2':
        stdout.write("Enter book title: ");
        String title = stdin.readLineSync()!;

        print(library.getBookInfo(title: title));
        break;
      
      case '3':
        stdout.write("Enter genre to filter (press enter to list all): ");
        String genre = stdin.readLineSync()!;

        library.listAllBooks(genre: genre.isNotEmpty ? genre : null);
        break;
      
      case '4':
        stdout.write("Enter genre: ");
        String genre = stdin.readLineSync()!;

        print(library.listBooksByGenre(genre: genre));
        break;
      
      case '5':
        stdout.write("Enter book title to remove: ");
        String title = stdin.readLineSync()!;

        print(library.removeBook(title: title));
        break;
      
      case '6':
        print("Exiting Library Management System...");
        return;
      
      default:
        print("Invalid choice, please try again.");
    }
  }
}

void printMainMenu() 
{
  print("\n=========== Library Management System ===========");
  print("1. Add a Book");
  print("2. Retrieve Book Information");
  print("3. List All Books");
  print("4. List Books by Genre");
  print("5. Remove a Book");
  print("6. Exit");
  print("=================================================");
}

void addBookInput(Library library) 
{
  stdout.write("Enter book title: ");
  String title = stdin.readLineSync()!;

  stdout.write("Enter author (press enter to skip): ");
  String author = stdin.readLineSync()!;

  stdout.write("Enter publication year (press enter to skip): ");
  String? yearInput = stdin.readLineSync();
  int year = int.tryParse(yearInput ?? '') ?? 0;

  stdout.write("Enter genre (press enter to skip): ");
  String genre = stdin.readLineSync()!;

  library.addBook
  (
    title: title, 
    author: author.isNotEmpty ? author : "Unknown", 
    year: year, 
    genre: genre.isNotEmpty ? genre : "Uncategorized"
  );
}
