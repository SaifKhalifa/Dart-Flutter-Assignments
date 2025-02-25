class Book 
{
  String title;
  String author;
  String genre;
  int year;

  Book
  (
    {
      required this.title,
      this.author = 'Unknown Author',
      this.genre = 'Unknown Genre',
      this.year = 0,
    }
  );

  @override
  String toString() 
  {
    return 'Book{Title: $title, Author: $author, Genre: $genre, Publication Year: $year}';
  }
}