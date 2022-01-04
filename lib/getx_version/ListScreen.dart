// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav2_medium_example/getx_version/BookController.dart';

class BooksListScreen extends StatelessWidget {
  final bookController = Get.find<BookController>();

  @override
  Widget build(BuildContext context) {
    List<ListTile> ListViewChildren = [];
    for (var book in bookController.books) {
      ListViewChildren.add(ListTile(
          title: Text(book.title),
          subtitle: Text(book.author),
          onTap: () {
            bookController.selectedBook!.value = book;
            if (bookController.selectedBook != null) {
              print('Selected Book:${bookController.selectedBook!.value.title}');
            } else
              print('Selected Book is null');
          }));
    }
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: ListViewChildren),
    );
  }
}
