// ignore_for_file: file_names, unused_field

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:nav2_medium_example/book.dart';

class BookController extends GetxController {
  Rx<Book>? selectedBook = Book('null', 'null').obs;

  List<Book> books = [
    Book('Book1', 'Author1'),
    Book('Book2', 'Author2'),
    Book('Book3', 'Author3')
  ];
}
