import 'package:flutter/material.dart';
import 'package:toku_app/constances.dart';
import 'package:toku_app/data/numbers_data.dart';
import 'package:toku_app/widgets/numbers_item.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: appBarColor,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => NumbersItem(itemModel: numbers[index]),
      ),
    );
  }
}
