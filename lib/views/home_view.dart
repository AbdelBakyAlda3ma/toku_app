import 'package:flutter/material.dart';
import 'package:toku_app/data/category_data.dart';

import '../constances.dart';
import '../widgets/category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'Toku',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: category.length,
            itemBuilder: (context, index) {
              return CategoryItem(
                categoryModel: category[index],
              );
            }));
  }
}
