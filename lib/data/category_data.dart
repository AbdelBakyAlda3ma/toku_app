import 'package:toku_app/constances.dart';
import 'package:toku_app/models/category_model.dart';
import 'package:toku_app/views/colors_view.dart';
import 'package:toku_app/views/family_members.dart';
import 'package:toku_app/views/numbers_view.dart';
import 'package:toku_app/views/phrases_view.dart';

List<CategoryModel> category = [
  CategoryModel(
    text: 'Numbers',
    color: numbersViewBackgroundColor,
    destinationPage: const NumbersView(),
  ),
  CategoryModel(
    text: 'Family members',
    color: familyMembersViewBackgroundColor,
    destinationPage: const FamilyMembersView(),
  ),
  CategoryModel(
    text: 'Colors',
    color: colorsViewBackgroundColor,
    destinationPage: const ColorsView(),
  ),
  CategoryModel(
    text: 'Phrases',
    color: phrasesViewBackgroundColor,
    destinationPage: const PhrasesView(),
  ),
];
