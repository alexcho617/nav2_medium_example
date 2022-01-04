// // ignore_for_frefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:nav2_medium_example/BookController.dart';
// import 'package:nav2_medium_example/DetailScreen.dart';
// import 'package:nav2_medium_example/ListScreen.dart';
// import 'package:nav2_medium_example/getx_version/BookController.dart';

// void main() {
//   runApp(const BooksApp());
// }

// //StatefulWidget
// class BooksApp extends StatefulWidget {
//   const BooksApp({Key? key}) : super(key: key);

//   @override
//   _BooksAppState createState() => _BooksAppState();
// }

// class _BooksAppState extends State<BooksApp> {
//   var bookController = Get.put(BookController());

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Books App',
//       home: Navigator(
//           pages: [
//             MaterialPage(
//               key: ValueKey('BooksListPage'),
//               child: BooksListScreen(),
//             ),
//             if (bookController.selectedBook!.value.title != 'null')
//               BookDetailsPage()
//           ],
//           onPopPage: (route, result) {
//             return route.didPop(result);
//             //bookController.selectedBook!.value.title = 'null';
//           }),
//     );
//   }
// }
