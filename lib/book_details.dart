
import 'package:flutter/material.dart';
import 'package:nav2_medium_example/book.dart';

class BookDetailsPage extends Page {
  final Book? book;

  BookDetailsPage({
    this.book,
  }) : super(key: ValueKey(book));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return BookDetailsScreen(book: book);
      },
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final Book? book;

  BookDetailsScreen({
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(book!.title, style: Theme.of(context).textTheme.headline6),
            Text(book!.author, style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
      ),
    );
  }
}