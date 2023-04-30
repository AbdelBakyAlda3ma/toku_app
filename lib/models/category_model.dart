import 'package:flutter/material.dart';

class CategoryModel {
  final String text;
  final Color color;
  final Widget destinationPage;
  CategoryModel(
      {required this.text, required this.color, required this.destinationPage});
}
