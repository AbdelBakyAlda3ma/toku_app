import 'package:flutter/material.dart';
import 'package:toku_app/data/family_members_data.dart';
import 'package:toku_app/widgets/family_members_item.dart';

import '../constances.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: appBarColor,
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) =>
            FamilyMembersItem(itemModel: familyMembers[index]),
      ),
    );
  }
}
