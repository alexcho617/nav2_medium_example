// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BookRoutePath {
  late int? id;
  late bool isUnknown;

  BookRoutePath.home()
      : id = null,
        isUnknown = false;
  BookRoutePath.details(this.id) : isUnknown = false;
  
  BookRoutePath.unknown()
      : id = null,
        isUnknown = true;

  bool get isHomePage => id == null;
  bool get isDetailsPage => id != null;
}

