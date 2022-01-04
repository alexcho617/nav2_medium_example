// ignore: file_names
// ignore_for_file: file_names, annotate_overrides

import 'package:flutter/material.dart';
import 'package:nav2_medium_example/book.dart';
import 'package:nav2_medium_example/bookRoutePath.dart';
import 'package:nav2_medium_example/book_list.dart';

class BookRouterDelegate extends RouterDelegate<BookRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<BookRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;
  Book? _selectedBook;
  bool show404 = false;
  BookRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  List<Book> books = [
    Book('Left Hand of Darkness', 'Ursula K. Le Guin'),
    Book('Too Like the Lightning', 'Ada Palmer'),
    Book('Kindred', 'Octavia E. Butler'),
  ];
  BookRoutePath get currentConfiguartion {
    if (show404) {
      return BookRoutePath.unknown();
    }
    return _selectedBook == null
        ? BookRoutePath.home()
        : BookRoutePath.details(books.indexOf(_selectedBook!));
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: ValueKey('BooksListPage'),
          child: BooksListScreen(
            books: books,
            onTapped: _handleBookTapped,
          ),
        ),
        if (show404)
          MaterialPage(key: ValueKey('UnknownPage'), child: UnknownScreen())
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        _selectedBook = null;
        show404 = false;
        notifyListeners();
        return true;
      },
    );
  }

  //When the path is given, this will update app's state according to it.
  @override
  Future<void> setNewRoutePath(BookRoutePath path) async {
    if (path.isUnknown) {
      _selectedBook = null;
      show404 = true;
    }

    if (path.isDetailsPage) {
      if (path.id! < 0 || path.id! > books.length - 1) {
        show404 = true;
      }
      _selectedBook = books[path.id!];
    } else {
      _selectedBook = null;
    }
    show404 = false;

  }

  void _handleBookTapped(Book book) {
    _selectedBook = book;
    notifyListeners();
  }
}

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Center(
        child: Text('404'),
      ),
    );
  }
}
