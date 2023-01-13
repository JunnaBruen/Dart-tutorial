class BookStore {
  final String name;
  final int page;
  static final _booksMap = <String, BookStore>{};

  BookStore.setting(this.name, this.page);

  factory BookStore(String name, int page) {
    var store = name.toLowerCase() + page.toString();
    return _booksMap.putIfAbsent(store, () {
      return BookStore.setting(name, page);
    });
  }
}

class BookPage {
  static var bookPages = 10;

  int get pages {
    return bookPages;
  }
}

// перегрузка операторов
class Box {
  List<Book> items;

  Box(this.items);

  void printBooks() {
    items.forEach((element) {
      print(element.name);
    });
  }

  void operator + (Book book) {
    items.add(book);
  }
}

class Book{
    final String name;
    final int pages;

    Book(this.name, this.pages);

    Box operator + (Book otherBook){
      return Box([this, otherBook]);
    }
}