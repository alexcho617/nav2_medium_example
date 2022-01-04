// ignore_for_file: file_names, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'BookController.dart';
class BookDetailsPage extends Page {
  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return BookDetailsScreen();
      },
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final bookController = Get.find<BookController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('BOok'),
            Text(bookController.selectedBook!.value.title),
            Text(bookController.selectedBook!.value.title),
          ],
        ),
      ),
    );
  }
}
