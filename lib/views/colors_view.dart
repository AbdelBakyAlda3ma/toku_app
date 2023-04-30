import 'package:flutter/material.dart';
import 'package:toku_app/data/color_data.dart';
import 'package:toku_app/widgets/colors_item.dart';

import '../constances.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: appBarColor,
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => ColorsItem(itemModel: colors[index]),
      ),
    );
  }
}
