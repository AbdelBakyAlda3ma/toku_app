import 'package:flutter/material.dart';
import 'package:toku_app/data/phrases_data.dart';
import 'package:toku_app/widgets/phrases_item.dart';

import '../constances.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: appBarColor,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) => PhrasesItem(itemModel: phrases[index]),
      ),
    );
  }
}
