class ItemModel {
  final String jpText, enText, sound;
  final String? image;

  ItemModel({
    required this.sound,
    required this.jpText,
    required this.enText,
    this.image,
  });
}
